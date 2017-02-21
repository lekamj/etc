#!/bin/bash -e

TEXT_FILE_NAME="TemplateLekamj.txt"
DEST="/Users/HannarLee/Desktop/${TEXT_FILE_NAME}"

for pythonFile in ./*py; do 
  echo -e '---------'$pythonFile'---------\n\n\n' >> $DEST;
  cat ./$pythonFile >> $DEST; 
  echo -e '\n\n\n-------------'$pythonFile'------------\n\n\n' >> $DEST;
done
