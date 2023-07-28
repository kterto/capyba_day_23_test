#!/bin/bash
if [ -f pubspec.yaml ] && cat pubspec.yaml | grep name: ; then
  echo "Project already initialized"
else 
  echo "Enter the projects name: (snake_case)"
  SNAKE_PAT='^[a-z]+((_[a-z]+)*)$'
  read PROJECT_NAME
  if [[ $PROJECT_NAME =~ $SNAKE_PAT ]]; then
      echo "Now enter the projects description:"
      read PROJECT_DESCRIPTION
      echo "Which state management do you wish to use? 1) for bloc, 2) for StateNotifier + Riverpod"
      while [ "$STATE_MANAGEMENT" != "1" ] || [ "$STATE_MANAGEMENT" != "2" ] 
      do
        read STATE_MANAGEMENT
        case $STATE_MANAGEMENT in
            1) mv pubspec_bloc.yaml pubspec.yaml && break ;;
            2) mv pubspec_SN_RP.yaml pubspec.yaml && mv lib/src/sample_SN_RP lib/src/sample && break ;;
            *)     echo "Invalid option. Please enter a valid option." ;;
        esac
      done

      echo "description: $PROJECT_DESCRIPTION" | cat - pubspec.yaml > temp && mv temp pubspec.yaml
      echo "name: $PROJECT_NAME" | cat - pubspec.yaml > temp && mv temp pubspec.yaml

      importTargets=($(grep -lR "flutter_base" lib))

      for f in ${importTargets[@]}; do
        FILE_NAME="$(echo $f | sed -e "s/flutter_base/$PROJECT_NAME/g")"
        FILE_CONTENT="$(cat $f)"
        
        arr=(${PROJECT_NAME//_/ })  
        VARIABLE_NAME=
        for NAME_PIECE in "${arr[@]}"; do
          if [[ "$NAME_PIECE" == "${arr[0]}" ]]; then
            VARIABLE_NAME="$(tr '[:upper:]' '[:lower:]'  <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          else 
            VARIABLE_NAME="$VARIABLE_NAME$(tr '[:lower:]' '[:upper:]' <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          fi
        done
        TYPE_NAME=
        for NAME_PIECE in "${arr[@]}"; do
          if [[ "$NAME_PIECE" == "${arr[0]}" ]]; then
            TYPE_NAME="$(tr '[:lower:]' '[:upper:]'  <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          else 
            TYPE_NAME="$TYPE_NAME$(tr '[:lower:]' '[:upper:]' <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          fi
        done
        FIXED_IMPORTS="$(echo $FILE_CONTENT | sed -e "s/flutter_base/$PROJECT_NAME/g")"
        FIXED_VARIABLES="$(echo $FIXED_IMPORTS | sed -e "s/flutterBase/$VARIABLE_NAME/g")"
        FIXED_TYPES="$(echo $FIXED_VARIABLES | sed -e "s/FlutterBase/$TYPE_NAME/g")"
        echo $FIXED_TYPES > temp && mv temp $f && mv $f $FILE_NAME 
      done

      typeTargets=($(grep -lR "FlutterBase" lib))

      for f in ${typeTargets[@]}; do
        FILE_NAME="$(echo $f | sed -e "s/flutter_base/$PROJECT_NAME/g")"
        FILE_CONTENT="$(cat $f)"
        
        arr=(${PROJECT_NAME//_/ })  
        VARIABLE_NAME=
        for NAME_PIECE in "${arr[@]}"; do
          if [[ "$NAME_PIECE" == "${arr[0]}" ]]; then
            VARIABLE_NAME="$(tr '[:upper:]' '[:lower:]'  <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          else 
            VARIABLE_NAME="$VARIABLE_NAME$(tr '[:lower:]' '[:upper:]' <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          fi
        done
        TYPE_NAME=
        for NAME_PIECE in "${arr[@]}"; do
          if [[ "$NAME_PIECE" == "${arr[0]}" ]]; then
            TYPE_NAME="$(tr '[:lower:]' '[:upper:]'  <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          else 
            TYPE_NAME="$TYPE_NAME$(tr '[:lower:]' '[:upper:]' <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          fi
        done
        FIXED_IMPORTS="$(echo $FILE_CONTENT | sed -e "s/flutter_base/$PROJECT_NAME/g")"
        FIXED_VARIABLES="$(echo $FIXED_IMPORTS | sed -e "s/flutterBase/$VARIABLE_NAME/g")"
        FIXED_TYPES="$(echo $FIXED_VARIABLES | sed -e "s/FlutterBase/$TYPE_NAME/g")"
        echo $FIXED_TYPES > temp && mv temp $f && mv $f $FILE_NAME 
      done

      bash scripts/fvm-run.sh flutter create .
      bash scripts/fvm-run.sh flutter format .

    else
      echo "Invalid dart project name!"; exit
  fi
fi
