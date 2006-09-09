(* $Id: progrBar.ml,v 5.1 2006-09-09 18:27:44 ddr Exp $ *)

value size = 60;
value draw_rep = 5;
value draw = "|/-\\";
value empty = '.';
value full = ref '#';

value draw_len = String.length draw;
value cnt = size * draw_rep * draw_len;

value start () =
  do {
    for i = 1 to size do { Printf.eprintf "%c" empty };
    Printf.eprintf "\013"
  }
;

value run cnt max_cnt =
  do {
    let already_disp = cnt * size / max_cnt in
    let to_disp = (cnt + 1) * size / max_cnt in
    for i = already_disp + 1 to to_disp do {
      Printf.eprintf "%c" full.val
    };
    let already_disp = cnt * cnt / max_cnt in
    let to_disp = (cnt + 1) * cnt / max_cnt in
    if cnt = max_cnt - 1 then Printf.eprintf " \008"
    else if to_disp > already_disp then
      let k = to_disp mod draw_len in
      let k = if k < 0 then draw_len + k else k in
      Printf.eprintf "%c\008" draw.[k]
    else ();
    flush stderr;
  }
;

value finish () =
  do {
    Printf.eprintf "\n";
    flush stderr;
  }
;