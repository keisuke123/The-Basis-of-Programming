(* 目的：身長(m)と体重(kg)からBMIを返す *)
(* bmi: float->float->float *)
let bmi height weight = weight /. (height *. height)

(* 目的：身長(m)と体重(kg)からBMIを計算しその数値によって体型を返す *)
(* taikei: float->float->string *)
let taikei height weight = if bmi height weight < 18.5 then "やせ"
                            else if bmi height weight < 25.0 then "標準"
                            else if bmi height weight < 30.0 then "肥満"
                            else "高度肥満"

(* テスト *)
let test1 = taikei 1.13 20.0 = "やせ" 
let test2 = taikei 1.63 57.0 = "標準" 
let test3 = taikei 1.71 56.0 = "標準" 