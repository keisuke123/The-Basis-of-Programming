(* int lst は
    - []            空リスト
    - first :: rest 最初の要素がfirstで残りのリストがrest (restが自己参照) *)

(* 目的：整数のリストを受け取り，偶数の要素のみ含むリストを返す *)
(* length: int list -> int list *)
let rec even lst = match lst with
                  [] -> []
                | first :: rest -> if first mod 2 = 0 then first :: even rest
                                  else even rest

(* テスト *)
let test1 = even [] = []
let test2 = even [1] = []
let test3 = even [1; 2] = [2]
let test4 = even [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = [2; 4; 6; 8; 10]