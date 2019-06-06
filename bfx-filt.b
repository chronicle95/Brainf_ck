brainfuck extension

filters out any non-bf crap

memory map

ch ch_copy tmp flg
== ======= === ===

written by chronicle95 in 2019

,[ main loop: read until EOF not met

[->+>+<<]
>>[-<<+>>]
>+                               set flag
<+++++++++[-<---------->]<---    sub 93 (end loop)
[++                              add to 91 (loop)
[>+++[-<++++++++++>]<-           add to 62 (next)
[++                              add to 60 (prev)
[>++[-<+++++++>]<                add to 46 (put)
[+                               add to 45 (dec)
[+                               add to 44 (get)
[+                               add to 43 (inc)
[>>-<<[-]]]]]]]]]                otherwise reset flag
>>[-<<<.[-]>>>]<<<               if flag then print

,] end of main loop
