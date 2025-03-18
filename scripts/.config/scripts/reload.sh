#!/bin/bash
killall $1
sleep 1
$1 &
