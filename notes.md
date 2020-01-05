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