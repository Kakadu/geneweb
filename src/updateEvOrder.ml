open TemplAst;

value eval_var conf base _env _ _loc xs =
  VVbool False
;

value get_vother = fun [ Vother x -> Some x | _ -> None ];
value set_vother x = Vother x;

value print_foreach conf base  print_ast eval_expr _ _loc xs s ss ass _as =
  ()
;

value print_forum_message conf base =
  let env  = [ ("xxx", VVstring "asdf") ] in
  Hutil.interp conf base "forum"
    {Templ.eval_var = eval_var conf base;
     Templ.eval_transl _ = Templ.eval_transl conf;
     Templ.eval_predefined_apply _ = raise Not_found;
     Templ.get_vother = get_vother;
     Templ.set_vother = set_vother;
     Templ.print_foreach = print_foreach conf base}
    env ()
;

value print conf base =
  (* let r = *)
  (*   match p_getenv conf.env "i" with *)
  (*   [ Some pos -> get_message conf (MF.pos_of_string pos) *)
  (*   | None -> None ] *)
  (* in *)
  print_forum_message conf base
;

(* value print_mod conf base = *)
(*   match p_getint conf.env "i" with *)
(*   [ Some i -> *)
(*       let sfam = string_family_of conf base (Adef.ifam_of_int i) in *)
(*       let digest = Update.digest_family sfam in *)
(*       print_update_fam conf base sfam digest *)
(*   | _ -> incorrect_request conf ] *)
(* ; *)
