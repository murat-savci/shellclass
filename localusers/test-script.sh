#!/bin/bash
# test script
nil=0
foo=1
test $foo -gt $nil && echo "$nil is bigger than $foo" || echo "$nil is smaller than $foo"
test $foo -lt $nil && echo "$nil is bigger than $foo" || echo "$nil is smaller than $foo"