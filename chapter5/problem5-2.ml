(* 目的：時間を受け取り，午前か午後を返す *)
(* jikan: int -> string *)
let jikan time = 
    if time < 12 then "午前" else "午後"

(* テスト *)
let test1 = jikan 10 = "午前"
let test2 = jikan 14 = "午後"
let test1 = jikan 0 = "午前"
let test2 = jikan 12 = "午後"