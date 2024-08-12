#!/bin/bash
sleep 20s
kubectl proxy --address 0.0.0.0 --disable-filter=true
