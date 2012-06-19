mod=`echo -n "$message" | cut -d' ' -f2-`
if [ -f "$BOTDIR/modules/$mod/README" ]; then
	cat "$BOTDIR/modules/$mod/README" | while read line; do say "$channel" "$line"; done
fi
