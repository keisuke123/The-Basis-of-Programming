(* string lst は
    - []            空リスト
    - first :: rest 最初の要素がfirstで残りのリストがrest (restが自己参照) *)

(* 目的：文字列のリストを受け取り，すべて結合した文字列 *)
(* length: string list -> string *)
let rec concat lst = match lst with
                  [] -> ""
                | first :: rest -> first ^ concat rest

(* テスト *)
let test1 = concat [] = ""
let test2 = concat ["あ"] = "あ"
let test3 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"
let test4 = concat ["か"; "る"; "め"; "り"] = "かるめり"