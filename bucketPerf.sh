#!/bin/bash
./wordladder --dict ./dicts/million.dict --index-stats --csv --num-buckets 100000 | tail -n 2
./wordladder --dict ./dicts/million.dict --index-stats --csv --num-buckets 500000 | tail -n 1
./wordladder --dict ./dicts/million.dict --index-stats --csv --num-buckets 1000000 | tail -n 1
./wordladder --dict ./dicts/million.dict --index-stats --csv --num-buckets 5000000 | tail -n 1
./wordladder --dict ./dicts/million.dict --index-stats --csv --num-buckets 10000000 | tail -n 1
./wordladder --dict ./dicts/million.dict --index-stats --csv --num-buckets 50000000 | tail -n 1