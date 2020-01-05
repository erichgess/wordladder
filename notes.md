# Notes

## Using hash for index in LoadDictionary.
using murmur3 for the index look up.  This generates a 40% performance improvement.

Profiles showing change:
10.prof - profile before changes are made
13.prof - Using murmur3 hashing