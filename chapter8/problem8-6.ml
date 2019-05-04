(* 駅名の情報を格納する型 *)
type ekimei_t = {
  kanji: string;
  kana: string;
  romaji: string;
  shozoku: string;
}

(* 目的：駅の情報を受け取り，「路線名，駅名（かな）」の文字列を返す *)
(* hyoji: ekimei_t -> string *)
let hyoji ekimei = match ekimei with
  {kanji = kanji ; kana = kana ; shozoku = shozoku} ->
    shozoku ^ "，" ^ kanji ^ "（" ^ kana ^ "）"

(* テスト *)
let test1 = hyoji {kanji = "茗荷谷" ; kana = "みょうがだに" ; romaji = "myogadani" ; shozoku = "丸ノ内線"}
            = "丸ノ内線，茗荷谷（みょうがだに）"