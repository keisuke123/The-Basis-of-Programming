(* 目的：鶴亀算 *)
(* tsurukame: int -> int -> int *)
let tsurukame animals legs = 2 * animals - legs / 2

let test1 = tsurukame 7 20 = 4
let test1 = tsurukame 5 16 = 2
let test2 = tsurukame 5 14 = 3