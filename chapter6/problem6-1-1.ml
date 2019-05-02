let square x = x * x

(* 
<Error> 
utop # #use "chapter6/problem6-1-1.ml";;
val square : int -> int = <fun>
File "chapter6/problem6-1-1.ml", line 3, characters 19-21:
Error: This expression has type float but an expression was expected of type
         int 

*)
let test1 = square 3. 