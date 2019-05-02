(* 目的：各教科の点数の合計点と平均点をタプルで返す *)
(* goukei_to_heikin: int -> int -> int -> int -> int -> (int * float) *)
let goukei_to_heikin kokugo suugaku eigo rika shakai = 
  let sum = kokugo +. suugaku +. eigo +. rika +. shakai in 
  (sum, sum /. 5.0)

(* テスト *)
let test1 = goukei_to_heikin 10.0 10.0 10.0 10.0 10.0 = (50.0, 10.0)