(* 目的：名前と成績の組を受け取り，◎◎さんの評価は△ですという文字列を返す *)
(* seiseki: string * string -> string *)
let seiseki (namae, seiseki) = namae ^ "さんの評価は" ^ seiseki ^ "です．"

let test1 = seiseki("ほげほげ", "A") = "ほげほげさんの評価はAです．"