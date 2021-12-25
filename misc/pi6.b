[
Printing a PI approximation by using a common 355/113 ratio

Memory layout

kbABcfRp
||||||||
|||||||+- flag for decimal point on the first iteration
||||||+-- division result
|||||+--- flag: is divisor zero?
||||+---- temporary storage for copying
|||+----- intermediate dividend or remainder
||+------ intermediate divisor
|+------- dividend
+-------- scaling coefficient

First division is hard coded with integral 3 in the result cell and a remainder of 16
]


++++[->++++<]                   16 initial remainder
>>>>>>+++                       3  initial result
>+                              flag for dp
<[                              loop while result is not zero (main loop)
  <-[----->+<]>---.             print the result
  >[-                           need decimal point?
    <-----.>]                   print it
  <[-]                          clear the result
  divide the remainder*10 by 113
  prepare the divisor
  <<< ++++++++[-<++++++++++++++>]<+ 113
  prepare coefficient and start multiplication loop
  <<++++++++++[-
  restore previously stored remainder
  >[->>+>+<<<]>>>[-<<<+>>>]
  start division
  <[-<-[->>+>+<<<]>>>[-<<<+>>>]+<[>-<[-]]>[-<
       ++++++++[-<<++++++++++++++>>]<<+ 113
       >>>>+<]
  end division
  <<]
  end multiplication
  <<<]
  calculate proper remainder and save it
  >[-]<++++++++[->++++++++++++++<]>+ 113
  >[-<->]
end of main loop
>>>>]
