brainfuck extension

cuts away unnecessary move commands

memory map

ch flg tmp cntL 1 cntR 1 0 1
== === === ==== = ==== = = =

written by chronicle95 in 2019

>>>>+>>+>>+<<<<<<<< initialize memory

,[ main loop: read until EOF not met

>+<   set the flag
>>++++++[-<<---------->>]<<    subtract 60 (move left command)
[                              if not zero then
--                             subtract 2 to reach 62 (move right command)
[                              if not zero then
>[[-]                          loop: equalize the counters
>>[>>[-<<-<<+>>>>>>]]>[<<]<
]                              loop end
++++++[->++++++++++<]          generate 60 to tmp
>>[-<.>]                       print tmp times cntL
<++                            add 2 to tmp to get 62
>>>[-<<<.>>>]                  print tmp times cntR
<<<[-<<+>>]<<                  add back 62
.[-]]                          print the character
>[-                            else if ~flag then we are at 62
>>>>+<<<<                      increment cntR
]<]
>[-                            else if ~flag then we are at 60
>>+<<                          increment cntL
]<

,] end of main loop

print any move commands that left
>+
[[-]>>                         loop: equalize
[>>[-<<-<<+>>>>>>]]>[<<]<]     end of loop
++++++[->++++++++++<]          generate 60 to tmp
>>[-<.>]                       print tmp times cntL
<++                            add 2 to tmp to get 62
>>>[-<<<.>>>]                  print tmp times cntR
