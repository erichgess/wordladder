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