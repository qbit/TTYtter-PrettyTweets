PrettyADN
============

A texapp extension which reformats the posts to look pretty.

![Screen shot](screenshot.png)


PrettyADN.pl
---------------

The extension.  Simply load it by adding -exts="/path/to/PrettyADN.pl" to your
ttytter invocation. You can also add the `exts=` to your texapprc file to 
automatically load it.

You can change the colours by setting `extpref_prettyadn_pm_usercolour=BLAH` and
`extpref_prettyadn_stream_usercolour=BLAH` in your .texapprc, or specifying
`-extpref_prettyadn_pm_usercolour=BLAH` and/or 
`-extpref_prettyadn_stream_usercolour=BLAH` in your invocation, where BLAH is
your colour choice. By default, these are `extpref_prettyadn_pm_usercolour=RED` 
and `extpref_prettyadn_stream_usercolour=CYAN`.

Valid colour choices are:
 * `BLUE`
 * `RED`
 * `GREEN`
 * `YELLOW`
 * `MAGENTA`
 * `CYAN`
 
You can also specify `EM` (bold), `UNDER` (underline), or `OFF` (unformatted).

*Only one colour/tag can be specified.*

Colours and tags are *CASE SENSITIVE.*

Combining colours and formatting, for crazy background colours, blinking, etc is
not currently supported. Sorry! (Maybe in a future release.)

*Please note*: your terminal needs to support unicode and be at least 145
characters wide


Known Bugs
----------

None!

The original ttytter extension states that it broke Growl/notification support,
but this has not been tested with the texapp extension.


NOTE
----

Testing? We don't need no stinkin' testing!

It works for me. It should work for you. If something is broken, that's on you,
but let me know and I'll see if there's something I can figure out.


