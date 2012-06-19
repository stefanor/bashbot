QUERY=`echo -n "$message" | cut -d' ' -f2- | sed 's/ /+/g'`
RESULT=`lynx --dump "www.google.com/xhtml?q=$QUERY" | grep -A 2 '^ *1 ' | grep -v '^ *2 ' | (tr '\n' ' '; echo) | sed -e 's/  */ /g' -e 's/^[^a-zA-Z]*//'`
if [ -z "$RESULT" ]; then
	reply "$nick" "$channel" "Searching for $QUERY found no results."
else
	reply "$nick" "$channel" "Google found $RESULT"
fi
