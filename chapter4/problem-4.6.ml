(* 目的：弦の数に応じた足の数を返す *)
(* tsuru_no_ashi: int -> int *)
let tsuru_no_ashi x = 2 * x

let test1 = tsuru_no_ashi 1 = 2
let test2 = tsuru_no_ashi 2 = 4
let test2 = tsuru_no_ashi 10 = 20