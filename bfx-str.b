brainfuck extension
this program converts BF with strings to regular BF
when it stumbles across text in quotes the null terminated
text is rendered into memory at pointer position

written by chronicle95 in 2017

memory model: Ch Cp fZ fN
              == == == ==

,

[                      loop while EOF not met

READ quote
[->+>+<<]>>[-<<+>>]    copy char
++++[-<-------->]<--   subtract 34 from copy
>+>[-]<<               set fZ and reset fN
[>->+<<[-]]            if nonzero then reset fZ and set fN
>[                     if fZ then

,>++++[-<-------->]<-- loop until another quote mark not met
[>++++[-<++++++++>]<++

[->+<]++++++++++>      divide with remainder by 10
[-<-[->>+>+<<<]
>>>[-<<<+>>>]+<[>-<[-]]
>[>+<<<<++++++++++>>>-]
<<]++++++++++<[->-<]

>[-                    output remainder times the increment
>++++++[->+++++++<]>+.
[-]<<]

>>>[                   output result times ten loop
>++++++[->++++++++++<]       BF next
>++.[-]<<
[-                           BF increments
>++++++[->+++++++<]>+.
[-]<<]
+++++++++                    BF while
[->++++++++++<]>+.[-]<
+++++                        BF decrement
[->+++++++++<]>.[-]<
++++++                       BF previous
[->++++++++++<]>.[-]<
++++++[->+++++++<]>+         BF ten increments
..........[-]<
++++++                       BF next
[->++++++++++<]>++.[-]<
+++++++++                    BF endwhile
[->++++++++++<]>+++.[-]<
]

<<<<                   go back to fZ

<+>                    increment quoted char counter

,>++++[-<-------->]<--
]                      endloop

<[-                    output roll back to string beginning
>++++++                      BF previous
[->++++++++++<]>.[-]<<
]>

[-]]                   endif
>[                     if fN then
<<<.>>>                print the char
[-]]                   endif
<<<                    return back to char

,
]                      endloop
