if echo -n "$BOTOWNERS" | grep -q -e ":$nick:"; then
	echo "$message" > $PIPE
else
	reply "$nick" "$channel" "You can' t ask me to do that!"
fi
