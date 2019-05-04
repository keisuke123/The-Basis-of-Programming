(* 人の情報を表すデータ *)
type person_t = {
  name: string;       (* 体重 *)
  height: int;        (* 身長 *)
  weight: int;        (* 体重 *)
  birthday: string;   (* 誕生日 *)
  bloodType: string;  (* 血液型 *)
}

(* 目的：person_t型のデータを受け取り，その人の情報を表す文字列を返す *)
(* ketsueki_hyoji: person_t -> string *)
let ketsueki_hyoji person = match person with 
  {name = n ; height = h ; weight = w ; birthday = birthday ; bloodType = b} ->
    n ^ "さんの血液型は " ^ b ^ " 型です"

(* テスト *)
let person1 = {name="浅井"; height=175; weight=175; birthday="2020/1/1"; bloodType="A"}
let person2 = {name="宮原"; height=165; weight=175; birthday="2020/1/1"; bloodType="B"}
let person3 = {name="中村"; height=152; weight=45; birthday="1975/11/22"; bloodType="O"}

let test1 = ketsueki_hyoji person1 = "浅井さんの血液型は A 型です" 
let test2 = ketsueki_hyoji person2 = "宮原さんの血液型は B 型です" 
let test3 = ketsueki_hyoji person3 = "中村さんの血液型は O 型です" 
