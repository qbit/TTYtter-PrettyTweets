PrettyADN
============

A texapp extension which reformats the posts to look pretty.

![Screen shot](screenshot.png)

PrettyADN.pl
---------------

The extension.  Simply load it by adding -exts="/path/to/PrettyADN.pl" to your
ttytter invocation.

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

This extension inexplicably breaks growl support (possibly other notifications
as well) - this may not still apply ( 2013-05-12 )

NOTE
----

I have not tested this code with anything but my own setup.  If you *do* run it
and encounter problems, I'd love to hear about it.

^ Applies to me too :D

