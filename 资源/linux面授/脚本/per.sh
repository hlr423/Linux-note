#!/bin/bash

[ ! -r /tmp/file1 -a ! -w /tmp/file1 ] && echo "`whoami` is rw /tmp/file1" || echo "`whoami` is not w or rw  /tmp/file1"


