(* 時給 *)
let jikyu = 950

(* 基本給（円） *)
let kihonkyu = 100

(* 30時間以上 *)
let yugu_jikyu = 980

let kyuyo x = 
    kihonkyu + x * (if x < 30 then jikyu else yugu_jikyu)

(* テスト *)
let test1 = kyuyo 25 = 23850
let test2 = kyuyo 28 = 26700
let test3 = kyuyo 31 = 30480