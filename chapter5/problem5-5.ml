(* 目的：2次方程式の係数a,b,cを受け取り，判別式の値を返す *)
(* hanbetsushiki: float -> float -> float -> float *) 
let hanbetsushiki a b c = b *. b -. 4.0 *. a *. c 

(* 目的：2次方程式の係数a,b,cを受け取り，解の個数を返す *)
(* kai_no_kosuu: double -> double -> double -> int *) 
let kai_no_kosuu a b c = if hanbetsushiki a b c  > 0.0 then 2
                          else if hanbetsushiki a b c = 0.0 then 1
                          else 0

let test1 = kai_no_kosuu 1.0 (-5.0) (-2.0) = 2
let test2 = kai_no_kosuu 3.0 2.0 4.0 = 0
let test3 = kai_no_kosuu 2.0 (-4.0) 2.0 = 1 

