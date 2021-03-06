(* 学生ひとり分のデータ（名前，点数，成績）を表す型 *)
type gakuse_t = {
  namae: string;
  tensuu: int;
  seiseki: string;
}

(* gakusei_t list は
    - []            空リスト
    - first :: rest 最初の要素がfirstで残りのリストがrest
*)

(* gakusei_t list 型のデータの例 *)
let lst1 = []
let lst2 = [{namae = "asai"; tensuu = 70; seiseki = "B"}]
let lst3 = [{namae = "asai"; tensuu = 70; seiseki = "B"}; 
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}]
let lst4 = [{namae = "yoshida"; tensuu = 80; seiseki = "A"};
            {namae = "asai"; tensuu = 70; seiseki = "B"}; 
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}]            

(* 目的：学生リストlstのうち成績がAの人の数を返す *)
(* count_A : gakusei_t list -> int *)
let rec count_A lst = match lst with
                  [] -> 0
                | {namae = n; tensuu = t; seiseki = s} :: rest 
                    -> if s = "A" then 1 + count_A rest
                                  else count_A rest

(* テスト *)
let test1 = count_A lst1 = 0
let test1 = count_A lst2 = 0
let test1 = count_A lst3 = 1
let test1 = count_A lst4 = 2