(* 目的：弦の数に応じた足の数を返す *)
(* tsuru_no_ashi: int -> int *)
let tsuru_no_ashi x = 2 * x

(* 目的：与えられた亀の数に応じた足の数を返す *)
(* kame_no_ashi: int -> int *)
let kame_no_ashi x = 4 * x

(* 目的：与えられた鶴と亀の足の数を元に足の数の合計を返す *)
(* tsurukame_no_ashi: int -> int -> int *)
let tsurukame_no_ashi tsuru kame = tsuru_no_ashi tsuru + kame_no_ashi kame

let test1 = tsurukame_no_ashi 2 3 = 16
let test2 = tsurukame_no_ashi 5 5 = 30
let test3 = tsurukame_no_ashi 100 100 = 600