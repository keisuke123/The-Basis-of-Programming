type gakusei_t = {
  namae: string; 
  tensuu:int; 
  seiseki: string;
}

let hyouka gakusei = match gakusei with
  {namae = n; tensuu = t} ->
    {
      namae = n;
      tensuu = t;
      seiseki = if t >= 80 then "A"
                else if t >= 70 then "B"
                else if t >= 60 then "C" else "D" 
    }

let hoge = hyouka {namae="calmey"; tensuu=5; seiseki = "B"}