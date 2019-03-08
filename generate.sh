#!/bin/bash

#Usage: bash generate.sh  ---> For all languages
#Usage: bash generate.sh php ---> For only PHP

SPECFILE=ul_api_spec_openapi3_v2_0_0.yaml
DIR=.

VERSION=2.0.0
SW_VERSION=3.3.4
FILE=openapi-generator-cli-$SW_VERSION.jar
GROUP=com.unwired

if [[ ! -f $FILE ]]; then
  wget http://central.maven.org/maven2/org/openapitools/openapi-generator-cli/$SW_VERSION/openapi-generator-cli-$SW_VERSION.jar
fi

function generate {
  
  LANG=$1
  CONFIGURATION=""
  ADD_PARAMETERS=""
  NAME=unwired-$LANG-client
  TESTLOCATION=""

  case "$LANG" in
  #clojure
  clojure)
    ;;
  #csharp with test location
  csharp)
    TESTLOCATION="src/unwired.Test"
    ;;
  #dart
  dart)
    ;;
  #go
  go)
		ADD_PARAMETERS=""
		;;
  #haskell 
  haskell)
    ;;
  #java with package, configuration and testlocation information
  java)
		PKG="com.unwired.client"
		CONFIGURATION="--artifact-version $VERSION --api-package $PKG.api --model-package $PKG.model --artifact-id $NAME --group-id $GROUP --library okhttp-gson -DhideGenerationTimestamp=true"
    TESTLOCATION="src/test"
		;; 
  #kotlin
  kotlin)
    ;;
  #objc with add parameters as unwired
  objc)
    ADD_PARAMETERS="-DpodName=unwired"
    ;; 
  #perl with testlocation information
  perl)
    TESTLOCATION="t"
    ;;
  #php with configuration and testlocation information
  php)
		CONFIGURATION="--artifact-version $VERSION"
    TESTLOCATION="test"
		;;
  #python with testlocation information
  python)
    TESTLOCATION="test"
    ;;
  #r 
  r)
		ADD_PARAMETERS=""
		;;
  #ruby with configuration information
  ruby)
		CONFIGURATION="-DgemName=$NAME -DmoduleName=unwiredClient -DgemVersion=$VERSION"
		;;
  #swift4 with configuration
	swift4)
		CONFIGURATION="-DprojectName=unwired"
		;;
  	*)
		;;
  esac

#creating language folders in clients folder
CLIENTDIR="$DIR/clients/$LANG"
rm -rf $CLIENTDIR
mkdir -p $CLIENTDIR

#deleting test folder
if [ -n "$TESTLOCATION" ]; then
echo "Deleting test folder"
rm -rf $CLIENTDIR/$TESTLOCATION
fi
  #command to generate the files for different languages
  SH="java -jar $FILE generate -i $SPECFILE -g $LANG $CONFIGURATION -o $DIR/clients/$LANG $ADD_PARAMETERS -DpackageName=unwired -DinvokerPackage=unwired --git-repo-id $NAME --git-user-id unwiredlabs"
  echo $SH
  $SH
}

LANG=$1
if [[ "$LANG" != "" ]]; then
  generate $LANG
  exit 0
else
  echo "creating all"
  #languages used are stored in langarray
  langarray=(clojure csharp dart go haskell kotlin java objc perl php python qt5cpp r ruby rust scala swift4 ) 
  #for loop to call the generate function for languages used in langarray
  for i in "${langarray[@]}"
  do
    generate $i
  done
fi
