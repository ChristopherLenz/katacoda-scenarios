#!/bin/bash

grep ns4 -ie 'challenge-created-ns-0817'
[[ -f /root/ns4 ]] && [[ $(cat /root/ns4 | wc -l) -eq 1 ]] && echo done