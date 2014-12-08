#!/bin/bash

set -xe

if ! which fpm >/dev/null; then
	echo fpm missing
	exit 1
fi

if ! which packagetree >/dev/null; then
	pip install git+https://github.com/theojulienne/packagetree
fi

rm -rf output/

packagetree --dest-dir=output/ --iteration raw packages.yaml

for file in $(ls output); do
	echo "Pushing ${file}"
	if [[ ! -z "$PUSH_SCRIPT" ]]; then
		$PUSH_SCRIPT $(pwd)/output/${file}
	fi
done
