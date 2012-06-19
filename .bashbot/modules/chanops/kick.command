if echo -n "$BOTOWNERS" | grep -q -e ":$nick:"; then
	who=`echo -n "$message" | cut -d' ' -f2-`
	echo "KICK $channel $who" > $PIPE
else
	reply "$nick" "$channel" "You can't ask me to do that!"
fi
