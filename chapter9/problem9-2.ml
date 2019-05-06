type person_t = { 
  name: string;
  height: int;
  weight: int;
  birthday: string;
  bloodType: string;
}

let persons = {name="hoge"; height=175; weight=175; birthday="2020/1/1"; bloodType="A"} :: 
{name="fuga"; height=165; weight=175; birthday="2020/1/1"; bloodType="A"} ::
{name="foo"; height=152; weight=45; birthday="1975/11/22"; bloodType="AB"} :: []