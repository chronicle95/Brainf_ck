brainfuck extension
this program performs user defined substitutions
to the supplied source code

memory map
Cf0000F0pXpX~p0www~w0F0pXpX~p0www~w0F~

C is our currently processed character
f is main condition flag
F is substitution pair existence flag
p is keyword index pointer
X is keyword character
w is replacement string character
0 is empty cell
~ means possible repetition

written by chronicle95 in 2019

,[                               read until null

  +>++++++[-<-------->]+<        subtract forward slash and set flag
  [                              okay this is not definition
    ->+++++[-<++++++++>]<        so add back the forward slash
                                 PROCESS ANY OTHER CHARACTER
    todo 
  ]
  >
  [-                             this is definition clear a flag
                                 APPEND A NEW PAIR
    >>>>> [>>>[>>]>[>]>]         go to the end of the list
    +                            set existence flag
    >>+                          init index
    >,+>++++++[-<-------->]      read in a key string until forward slash
    <[->++++++[-<++++++++>]
    >,+>++++++[-<-------->]<]
    >,+>++++++[-<-------->]      read in replacement string until forward
    <[->++++++[-<++++++++>]      slash
     ,+>++++++[-<-------->]<]
    <<[<]<<[<<]<                 go to a previous pair
    [<<[<]<<[<<]<]               go to the begin of the list
  ]
  <

,]                               read until null
