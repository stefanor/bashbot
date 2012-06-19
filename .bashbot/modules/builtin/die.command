if echo -n "$BOTOWNERS" | grep -q -e ":$nick:"; then
	say "$channel" "Goodbye everyone."
	say "$channel" "It was nice knowing you all..."
	kill $$
else
	reply "$nick" "$channel" "You can' t ask me to do that!"
fi
