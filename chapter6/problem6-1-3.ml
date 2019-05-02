(* 
<Error> 

関数名は小文字スタートなので…
utop # let TV bangumi youbi = bangumi ^ "は"  ^ youbi ^ "に放映です" ;;
Error: Syntax error
 *)
let TV bangumi youbi = bangumi ^ "は" ^ youbi ^ "に放映です．" 

let test1 = TV "ポケモン" "木曜日"