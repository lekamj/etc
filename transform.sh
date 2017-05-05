#!/bin/bash -e

#######################
#  A simple file that inserts html into a format of
#  const htmlString = `
#  <<HTML>>
#  `;
#  export const default htmlString;

jsFileCount=`ls -1 *.js 2>/dev/null | wc -l`
echo ${jsFileCount}
if [ $jsFileCount != 0 ]
  then
    for jsFile in ./*js; do 
      rm ${jsFile}
    done
fi

for htmlFile in ./*html; do
  answer=$(echo "$htmlFile" | tr -cd 0-9 <<< ${htmlFile})
  tempFileLocation="./temp.txt";
  fileLocation="./mission_${answer}_html_string.js"
  echo -e 'const htmlString = `' >> ${tempFileLocation}
  cat ${htmlFile} >> ${tempFileLocation}
  echo -e '`;' >> ${tempFileLocation}
  echo >> ${tempFileLocation}
  echo 'export default htmlString' >> ${tempFileLocation}
  cat ${tempFileLocation} | tr '\t' '  ' >> ${fileLocation}
  rm ${tempFileLocation}
done

