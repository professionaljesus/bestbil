#!/bin/bash
ssh -t ubuntu@192.168.1.1 "sudo date -s '@$(date +%s)'"
