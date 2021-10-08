## Brainf_ck
Random programs written in brainf_ck esoteric programming language.

### File extensions
* `.bpp` files require preprocessing
* `.b` files can be supplied directly to the interpreter/compiler and should work just fine

### Runtime environment constraints
Tape size is 30000 cells. Each cell is 8 bit wide and allows for overflow/underflow. Memory pointer is bidirectionally looped. `stdin`/`stdout` are used for I/O. End of input is expected to be '\0'.
