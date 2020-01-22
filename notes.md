# Notes

## Performance changes that were made
###  LoadDictionary
1. Index words to make finding neighbors faster
1. Use hash in index

### Path Finding
1. Use a priority queue

## Using hash for index in LoadDictionary.
using murmur3 for the index look up.  This generates a 40% performance improvement.

Profiles showing change:
10.prof - profile before changes are made
13.prof - Using murmur3 hashing

## Perf Improvements
### Insights
1. How many duplicates show up in the index and the adjacency lists

Here are the stats:
```
3146638/3146638 buckets have duplicates
89856 total words were duplicated within buckets across the index
165084/370103 vertices have duplicates in their adjacency lists
589446/1281740 adj are duplicates
Words: 370103   Edges: 663608
```

44% of all entries on the adj list are duplicates.  This would indicate that a large amount of time in LoadDictionary is duplicated work
when actually constructing the graph.

### Load Dictionary
1. Only create one Hash object for the index class.  Then reuse that one for `add` and `adj`.

Perf Comparision:
Before: 14.prof  1.90s (first run)
After: 15.prof  1.66s  (third run)

One thing to note, I ran the after twice (the first time it was slightly slower).  I don't know if this is because the performance improves on teh second run
or if the performance is that variable.  I ran a third time and it was 1.66

2. Reduce the number of calls to grow slice.  By recording the max bucket size and init the adjList to that size.
Before: 15.prof 1.66 (third run)
After: 16.prof 1.85 (fourth run)

I ran the changed code 4 times and it was always slower.  Reverted teh code changes.

3. A lot of time is spent on `stringtoslicebyte`.  Can I reduce this or get rid of it?  In the code, a lot of time is spent
doing string manipulation and then converting strings to slices.  What if, I skip the strings, just read the dictionary as a
set of byte arrays, and just maniuplate the byte arrays?  Then, there will be no conversion needed when using the murmur3 hash.

Stats (from the flamegraph):
-----------------------------| LoadDictionary  | index.add  | index.near
Before Changes (with string) | 1.92s           | 1.18s      | 0.58s
After changes ([]byte)       | 

Things that I've noticed:
while debugging, after reading the dictionary, the list of vertices, all the byte slices have a length of 3 or 4 but a capacty of over 4000?  This is because the []byte returned by the Scanner is not safe to share as it's just a slice into the buffer the Scanner uses to
read from (this led to a bug in my code when reading large dictionaries).  I needed to copy that data to my own safe slice.


### No Map version of Index
#### how to speed up index.near
the biggest time eater is growing the slice, so what if, the user passed in a fixed length buffer
near will run until the buffer is filled.  Then it will return the information necessary to:
1. Determine that near is complete or
2. Enough information to start back from where it left off

Ways To do this:
A:
1. Move the finding of words that are one larger to another function (i.e. the first 5 lines of `near`).  That function will
take a buffer and return the position within the bucket and a done indicator
2. Update `near` to return the letter being removed, the position within the bucket, a done state

B:
1. Add a function which returns the total number of ids that will be copied in
2. Update `near` to take a buffer and run until it is filled
3. You call length, create the buffer, then run near

### Index Uses Slice Not Map
#### Performance
The current form of this version of `wordladder` is now faster than the map based version, it also uses half the memory (811MiB vs 1500MiB)!

