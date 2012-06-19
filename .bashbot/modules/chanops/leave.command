if echo -n "$BOTOWNERS" | grep -q -e ":$nick:"; then
	if echo "$message" | egrep -q -e '^leave #(.*)'; then
		chan=`echo "$message" | cut -d' ' -f2-`
		echo "part $chan" > $PIPE
	else
		echo "part $channel" > $PIPE
	fi
else
	reply "$nick" "$channel" "You can't ask me to do that!"
fi
