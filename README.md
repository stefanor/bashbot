Bashbot was originally an idea and bash snippet from [Jonathan
Hitchcock](/vhata). I took it and bastardised it beyond imagination.

It's a fully-featured, modular IRC bot.

The modules come in 2 types:

* Commands are matched by filename. I.e. `bot: foo bar` will run the
  command `foo` if it exists.
* Regex commands are matched by a regex in the file's first line
  (commented). So a regex-command beginning with `# ^(.*) is( also)?
  (.*)$` will be executed if you try and set a factoid with `bot:
  Spinach is a vegtable`

Included modules:

* announce
* builtin
* chanops
* factoid
* google
* insult
* karma
* logs
* say
* tell

Security
--------

This bot is a security nightmare. I haven't found any mistakes, but
you'd be insane to run this in anything but the most strictly-controlled
environment.

Performance
-----------

No optimisation included :-)

Configuration
-------------

Some options are in `bin/bashbot`

The modules are in `.bashbot`
