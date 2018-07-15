#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

python3 $DIR/prepare_dataset.py --dataset pascal --year 2007,2012 --set trainval --target $DIR/../data/VOC2014packed/train.lst
python3 $DIR/prepare_dataset.py --dataset pascal --year 2007 --set test --target $DIR/../data/VOC2014packed/val.lst --shuffle False
