#!/usr/bin/env bash
make spelling | grep en.rst | tee _build/spelling/log.txt
