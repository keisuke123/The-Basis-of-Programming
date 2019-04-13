(* 目的：与えられた亀の数に応じた足の数を返す *)
(* kame_no_ashi: int -> int *)
let kame_no_ashi x = x * 4

let test1 = kame_no_ashi 1 = 4
let test2 = kame_no_ashi 10 = 40
let test3 = kame_no_ashi 25 = 100