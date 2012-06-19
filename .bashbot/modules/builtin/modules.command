commands=`ls "$BOTDIR/commands" | tr '\n' ',' | sed 's/,/, /g'`
regexes=`ls "$BOTDIR/regexes" | tr '\n' ',' | sed 's/,/, /g'`
modules=`ls "$BOTDIR/modules" | tr '\n' ',' | sed 's/,/, /g'`
say "$channel" "Modules: $modules"
say "$channel" "Commands: $commands"
say "$channel" "Regexs: $regexes"
