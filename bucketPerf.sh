#!/bin/bash
./wordladder --dict ./dicts/million.dict --num-buckets 100000 | grep LoadDictionary | sed -e 's/^LoadDictionary (\(.*\)) time (sec): \(.*\)$/\1,\2/g'
./wordladder --dict ./dicts/million.dict --num-buckets 500000 | grep LoadDictionary | sed -e 's/^LoadDictionary (\(.*\)) time (sec): \(.*\)$/\1,\2/g'
./wordladder --dict ./dicts/million.dict --num-buckets 1000000 | grep LoadDictionary | sed -e 's/^LoadDictionary (\(.*\)) time (sec): \(.*\)$/\1,\2/g'
./wordladder --dict ./dicts/million.dict --num-buckets 5000000 | grep LoadDictionary | sed -e 's/^LoadDictionary (\(.*\)) time (sec): \(.*\)$/\1,\2/g'
./wordladder --dict ./dicts/million.dict --num-buckets 10000000 | grep LoadDictionary | sed -e 's/^LoadDictionary (\(.*\)) time (sec): \(.*\)$/\1,\2/g'
./wordladder --dict ./dicts/million.dict --num-buckets 50000000 | grep LoadDictionary | sed -e 's/^LoadDictionary (\(.*\)) time (sec): \(.*\)$/\1,\2/g'