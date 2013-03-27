#!/bin/bash
dd if=/dev/urandom of=upload/upload_1 bs=1K count=100
dd if=/dev/urandom of=upload/upload_2 bs=1K count=500
dd if=/dev/urandom of=upload/upload_3 bs=1M count=1
dd if=/dev/urandom of=upload/upload_4 bs=1M count=3
dd if=/dev/urandom of=upload/upload_5 bs=1M count=6
dd if=/dev/urandom of=upload/upload_6 bs=1M count=10
dd if=/dev/urandom of=upload/upload_7 bs=1M count=20
dd if=/dev/urandom of=upload/upload_8 bs=1M count=50
