# Yii basic command completion

_yii_get_command_list () {
	./yiic | awk '/^ - [a-z]+/ { print $2 }'
}

_yii () {
  if [ -f yiic ]; then
    compadd `_yii_get_command_list`
  fi
}

compdef _yii yiic
