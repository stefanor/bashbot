insultee=`echo -n "$message" | cut -d' ' -f2`
insult[0]="$insultee, You SUCK!"
insult[1]="$insultee, jou ma se poes!"
insult[2]="You *smell*, $insultee"
r=$[$RANDOM%3]
say "$channel" "${insult[$r]}"
