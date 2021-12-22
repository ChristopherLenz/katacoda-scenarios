#!/bin/bash

[[ $(kubectl get ns | grep -i 'challenge-created-ns-0816' | wc -l) -eq 0 ]] && echo done