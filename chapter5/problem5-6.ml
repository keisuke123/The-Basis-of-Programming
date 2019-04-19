(* 目的：2次方程式の係数a,b,cを受け取り，判別式の値を返す *)
(* hanbetsushiki: float -> float -> float -> float *) 
let hanbetsushiki a b c = b *. b -. 4.0 *. a *. c 

(* 目的：2次方程式の係数a,b,cを受け取り，虚数解を持つかどうかを返す *)
(* kyosuukai: float->float->float->bool *)
let kyosuukai a b c = hanbetsushiki a b c < 0.0

(* テスト *)
let test1 = kyosuukai 1.0 5.0 4.0 = false 
let test2 = kyosuukai 2.0 (-4.0) 2.0 = false 
let test3 = kyosuukai 1.0 2.0 4.0 = true 