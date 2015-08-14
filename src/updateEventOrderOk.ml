open Config;
open Def;
open Futil;
open Gutil;
open Gwdb;
open Hutil;
open Mutil;
open Util;
open Printf;

value print_reorder_ok conf base =
  let title _ = Wserver.wprint "%s" (capitale (transl conf "person added")) in
  do {
    header conf title;
    print_link_to_welcome conf True;
    (* Si on a supprimé des caractères interdits *)
    (* if List.length removed_string.val > 0 then *)
    (*   do { *)
    (*      Wserver.wprint "<h2 class=\"error\">%s</h2>\n" (capitale (transl conf "forbidden char")); *)
    (*      List.iter (Wserver.wprint "<p>%s</p>") removed_string.val *)
    (*   } *)
    (* else (); *)
    (* (\* Si on a supprimé des relations, on les mentionne *\) *)
    (* List.iter *)
    (*   (fun s -> Wserver.wprint "%s -> %s\n" s (transl conf "forbidden char")) *)
    (*   deleted_relation.val; *)
    (* Wserver.wprint "\n%s" *)
    (*   (referenced_person_text conf base (poi base p.key_index)); *)
    Wserver.wprint "\n";
    (* Update.print_warnings conf base wl; *)
    trailer conf;
  }
;

value verify_permutation xs =
  let len = List.length xs in
  let () = printf "Verify that int permutation '%s' is permutation of numbers from 0 to %d\n"
                  (String.concat "," (List.map string_of_int xs)) (len-1) in
  True
;

value print_mod conf base =
  let () = print_endline "Changing order is not implement" in
  let p =
    match p_getint conf.env "i" with
    [ Some ip -> Some (ip, gen_person_of_person (poi base (Adef.iper_of_int ip)) )
    | None -> None ]
  in

  let order =
    match p_getenv conf.env "v" with
    [ Some s -> let xs = Str.split (Str.regexp ",") s in
                Some (List.map int_of_string xs)
    | None -> None ]
  in
  (* TODO: more checks for parameters *)
  (* TODO: check for authorization *)
  match (p,order) with
  [ (Some (iper,p), Some order) when verify_permutation order ->
    let events = get_pevents (poi base (Adef.iper_of_int iper)) in

    print_reorder_ok conf base
  |  _ ->          Wserver.wprint "<h3 class=\"error\">"  ]
;
