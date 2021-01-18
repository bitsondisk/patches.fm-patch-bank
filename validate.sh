#!/bin/bash

for patch_file in $(find public/ -name "*.json")
do
  jsonschema -i ${patch_file} ~/src/sysextools/sysextools/formats/yamaha/dx7/dx7.schema.json

  if [ $? -eq 1 ]
  then
    echo "${patch_file} failed validation"
  fi
done
