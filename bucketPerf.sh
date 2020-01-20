#!/bin/bash
./wordladder --dict ./dicts/million.dict --csv --num-buckets 100000 | tail -n 2
./wordladder --dict ./dicts/million.dict --csv --num-buckets 250000 | tail -n 1
./wordladder --dict ./dicts/million.dict --csv --num-buckets 500000 | tail -n 1
./wordladder --dict ./dicts/million.dict --csv --num-buckets 750000 | tail -n 1
./wordladder --dict ./dicts/million.dict --csv --num-buckets 1000000 | tail -n 1
./wordladder --dict ./dicts/million.dict --csv --num-buckets 2500000 | tail -n 1
./wordladder --dict ./dicts/million.dict --csv --num-buckets 5000000 | tail -n 1
./wordladder --dict ./dicts/million.dict --csv --num-buckets 7500000 | tail -n 1
./wordladder --dict ./dicts/million.dict --csv --num-buckets 10000000 | tail -n 1
./wordladder --dict ./dicts/million.dict --csv --num-buckets 25000000 | tail -n 1
./wordladder --dict ./dicts/million.dict --csv --num-buckets 50000000 | tail -n 1