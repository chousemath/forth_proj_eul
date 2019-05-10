\ check if the input is divisible by 3 or by 5
: /3|5  ( n  --  flag ) dup dup 3 mod 0= swap 5 mod 0= or ;
\ if input is true, add with second item on stack, otherwise drop top
: +|swap if + else drop then swap ;
\ create a range from input a starting value to input b higher than a
: ...  ( n  --  n1 n2...nn ) 0 DO dup 1 + LOOP ;
\ sum up the entire stack
: +stack  ( n1...nn  --  n ) 0 swap depth 2 - 0 DO /3|5 +|swap LOOP + ;
\ execute all words for project euler solution
: sln clearstack 0 999 ... +stack . ;