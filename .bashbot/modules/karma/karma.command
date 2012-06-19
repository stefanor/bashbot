karmee=`echo -n "$message" | cut -d' ' -f2`
karma=0
if grep -q -e "^$karmee:" "$BOTDIR/karma"; then
  karma=`grep -e "^$karmee:" "$BOTDIR/karma" | cut -d: -f2`
fi
say "$channel" "$karmee has a karma of $karma"
