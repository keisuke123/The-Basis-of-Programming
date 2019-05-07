type person_t = { 
  name: string;
  height: int;
  weight: int;
  birthday: string;
  bloodType: string;
}

(* 目的：person_tのリストを受け取り，A型の人の数を返す *)
let rec count_ketsueki_A lst = match lst with
                            [] -> 0
                          | {name=n; height=h; weight=w; birthday=birthday; bloodType=blood} :: rest -> 
                              if blood = "A" then 1 + count_ketsueki_A rest
                                            else count_ketsueki_A rest

(* テスト *)
let test1 = count_ketsueki_A [{name="かるめり"; height=171; weight=128; birthday="1111/11/11"; bloodType="B"}] = 0
let test2 = count_ketsueki_A [{name="かるめり"; height=171; weight=128; birthday="1111/11/11"; bloodType="A"}] = 1
let test3 = count_ketsueki_A [{name="かるめり"; height=171; weight=128; birthday="1111/11/11"; bloodType="A"};
                              {name="かるめり"; height=171; weight=128; birthday="1111/11/11"; bloodType="A"};
                              {name="かるめり"; height=171; weight=128; birthday="1111/11/11"; bloodType="A"}] = 3
let test4 = count_ketsueki_A [{name="かるめり"; height=171; weight=128; birthday="1111/11/11"; bloodType="A"};
                              {name="かるめり"; height=171; weight=128; birthday="1111/11/11"; bloodType="B"};
                              {name="かるめり"; height=171; weight=128; birthday="1111/11/11"; bloodType="A"}] = 2