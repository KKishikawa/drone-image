#!/bin/env bash
set -e

usage() {
  echo "Usage: $0 [-t <text>]"
  echo "  -t <text>  Text to print"
  exit 1
}

while getopts "t:" opt; do
  case $opt in
    t)
      text=$OPTARG
      ;;
    \?)
      usage
      ;;
  esac
done

if [ -z "$text" ]; then
  usage
fi

echo "$text"
