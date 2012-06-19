recipient=`echo -n "$message" | cut -d' ' -f2`
message=`echo -n "$message" | sed 's/tell [^ ]*\( that\)* \(.*\)/\2/'`
echo "$nick:$message" >> "$BOTDIR/messages/$recipient"

say "$channel" "Got that."
