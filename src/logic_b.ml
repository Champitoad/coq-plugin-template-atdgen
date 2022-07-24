(* Auto-generated from "logic.atd" *)
[@@@ocaml.warning "-27-32-33-35-39"]

type env = Fo_t.env

type expr = Fo_t.expr

type choice = Logic_t.choice

type form = Fo_t.form

type itrace = Logic_t.itrace

type pkind = Logic_t.pkind

type type_ = Fo_t.type_

type uid = Fo_t.uid

type ctxt = Logic_t.ctxt = { kind: pkind; handle: uid }

type hyp = Logic_t.hyp = { h_id: uid; h_form: form }

type goal = Logic_t.goal = { g_env: env; g_hyps: hyp list; g_concl: form }

type intro_pat = Logic_t.intro_pat

type ipath = Logic_t.ipath = { root: uid; ctxt: ctxt; sub: int list }

type action = Logic_t.action

type proof = Logic_t.proof

type vname = Fo_t.vname

type term = Fo_t.term

type sig_ = Fo_t.sig_

type name = Fo_t.name

type logcon = Fo_t.logcon

type bvar = Fo_t.bvar

type bkind = Fo_t.bkind

type arity = Fo_t.arity

let _2_tag = Bi_io.array_tag
let write_untagged__2 = (
  Atdgen_runtime.Ob_run.write_untagged_list
    Bi_io.svint_tag
    (
      Bi_io.write_untagged_svint
    )
)
let write__2 ob x =
  Bi_io.write_tag ob Bi_io.array_tag;
  write_untagged__2 ob x
let string_of__2 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__2 ob x;
  Bi_outbuf.contents ob
let get__2_reader = (
  Atdgen_runtime.Ob_run.get_list_reader (
    Atdgen_runtime.Ob_run.get_int_reader
  )
)
let read__2 = (
  Atdgen_runtime.Ob_run.read_list (
    Atdgen_runtime.Ob_run.get_int_reader
  )
)
let _2_of_string ?pos s =
  read__2 (Bi_inbuf.from_string ?pos s)
let env_tag = Fo_b.env_tag
let write_untagged_env = (
  Fo_b.write_untagged_env
)
let write_env ob x =
  Bi_io.write_tag ob Fo_b.env_tag;
  write_untagged_env ob x
let string_of_env ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_env ob x;
  Bi_outbuf.contents ob
let get_env_reader = (
  Fo_b.get_env_reader
)
let read_env = (
  Fo_b.read_env
)
let env_of_string ?pos s =
  read_env (Bi_inbuf.from_string ?pos s)
let expr_tag = Fo_b.expr_tag
let write_untagged_expr = (
  Fo_b.write_untagged_expr
)
let write_expr ob x =
  Bi_io.write_tag ob Fo_b.expr_tag;
  write_untagged_expr ob x
let string_of_expr ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_expr ob x;
  Bi_outbuf.contents ob
let get_expr_reader = (
  Fo_b.get_expr_reader
)
let read_expr = (
  Fo_b.read_expr
)
let expr_of_string ?pos s =
  read_expr (Bi_inbuf.from_string ?pos s)
let _3_tag = Bi_io.num_variant_tag
let write_untagged__3 = (
  Atdgen_runtime.Ob_run.write_untagged_option (
    write_expr
  )
)
let write__3 ob x =
  Bi_io.write_tag ob Bi_io.num_variant_tag;
  write_untagged__3 ob x
let string_of__3 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__3 ob x;
  Bi_outbuf.contents ob
let get__3_reader = (
  fun tag ->
    if tag <> 22 then Atdgen_runtime.Ob_run.read_error () else
      fun ib ->
        match Char.code (Bi_inbuf.read_char ib) with
          | 0 -> None
          | 0x80 ->
            Some (
              (
                read_expr
              )
                ib
            )
          | _ -> Atdgen_runtime.Ob_run.read_error_at ib
)
let read__3 = (
  fun ib ->
    if Bi_io.read_tag ib <> 22 then Atdgen_runtime.Ob_run.read_error_at ib;
    match Char.code (Bi_inbuf.read_char ib) with
      | 0 -> None
      | 0x80 ->
        Some (
          (
            read_expr
          )
            ib
        )
      | _ -> Atdgen_runtime.Ob_run.read_error_at ib
)
let _3_of_string ?pos s =
  read__3 (Bi_inbuf.from_string ?pos s)
let choice_tag = Bi_io.tuple_tag
let write_untagged_choice = (
  fun ob x ->
    Bi_vint.write_uvint ob 2;
    (
      let x, _ = x in (
        Bi_io.write_svint
      ) ob x
    );
    (
      let _, x = x in (
        write__3
      ) ob x
    );
)
let write_choice ob x =
  Bi_io.write_tag ob Bi_io.tuple_tag;
  write_untagged_choice ob x
let string_of_choice ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_choice ob x;
  Bi_outbuf.contents ob
let get_choice_reader = (
  fun tag ->
    if tag <> 20 then Atdgen_runtime.Ob_run.read_error () else
      fun ib ->
        let len = Bi_vint.read_uvint ib in
        if len < 2 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1 ];
        let x0 =
          (
            Atdgen_runtime.Ob_run.read_int
          ) ib
        in
        let x1 =
          (
            read__3
          ) ib
        in
        for i = 2 to len - 1 do Bi_io.skip ib done;
        (x0, x1)
)
let read_choice = (
  fun ib ->
    if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
    let len = Bi_vint.read_uvint ib in
    if len < 2 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1 ];
    let x0 =
      (
        Atdgen_runtime.Ob_run.read_int
      ) ib
    in
    let x1 =
      (
        read__3
      ) ib
    in
    for i = 2 to len - 1 do Bi_io.skip ib done;
    (x0, x1)
)
let choice_of_string ?pos s =
  read_choice (Bi_inbuf.from_string ?pos s)
let _4_tag = Bi_io.array_tag
let write_untagged__4 = (
  Atdgen_runtime.Ob_run.write_untagged_list
    choice_tag
    (
      write_untagged_choice
    )
)
let write__4 ob x =
  Bi_io.write_tag ob Bi_io.array_tag;
  write_untagged__4 ob x
let string_of__4 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__4 ob x;
  Bi_outbuf.contents ob
let get__4_reader = (
  Atdgen_runtime.Ob_run.get_list_reader (
    get_choice_reader
  )
)
let read__4 = (
  Atdgen_runtime.Ob_run.read_list (
    get_choice_reader
  )
)
let _4_of_string ?pos s =
  read__4 (Bi_inbuf.from_string ?pos s)
let form_tag = Fo_b.form_tag
let write_untagged_form = (
  Fo_b.write_untagged_form
)
let write_form ob x =
  Bi_io.write_tag ob Fo_b.form_tag;
  write_untagged_form ob x
let string_of_form ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_form ob x;
  Bi_outbuf.contents ob
let get_form_reader = (
  Fo_b.get_form_reader
)
let read_form = (
  Fo_b.read_form
)
let form_of_string ?pos s =
  read_form (Bi_inbuf.from_string ?pos s)
let itrace_tag = Bi_io.array_tag
let write_untagged_itrace = (
  write_untagged__4
)
let write_itrace ob x =
  Bi_io.write_tag ob Bi_io.array_tag;
  write_untagged_itrace ob x
let string_of_itrace ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_itrace ob x;
  Bi_outbuf.contents ob
let get_itrace_reader = (
  get__4_reader
)
let read_itrace = (
  read__4
)
let itrace_of_string ?pos s =
  read_itrace (Bi_inbuf.from_string ?pos s)
let pkind_tag = Bi_io.variant_tag
let write_untagged_pkind = (
  fun ob x ->
    match x with
      | `Hyp -> Bi_outbuf.add_char4 ob '\000' '7' '\012' '\031'
      | `Concl -> Bi_outbuf.add_char4 ob ']' '\139' '[' 'K'
      | `Var x ->
        Bi_outbuf.add_char4 ob '\128' 'A' '\150' '\199';
        (
          fun ob x ->
            Bi_io.write_tag ob Bi_io.variant_tag;
            match x with
              | `Head -> Bi_outbuf.add_char4 ob '/' '\228' 'U' '@'
              | `Body -> Bi_outbuf.add_char4 ob '+' '\244' '\166' '\194'
        ) ob x
)
let write_pkind ob x =
  Bi_io.write_tag ob Bi_io.variant_tag;
  write_untagged_pkind ob x
let string_of_pkind ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_pkind ob x;
  Bi_outbuf.contents ob
let get_pkind_reader = (
  fun tag ->
    if tag <> 23 then Atdgen_runtime.Ob_run.read_error () else
      fun ib ->
        Bi_io.read_hashtag ib (fun ib h has_arg ->
          match h, has_arg with
            | 3607583, false -> `Hyp
            | -578069685, false -> `Concl
            | 4298439, true -> (`Var (
                (
                  fun ib ->
                    if Bi_io.read_tag ib <> 23 then Atdgen_runtime.Ob_run.read_error_at ib;
                    Bi_io.read_hashtag ib (fun ib h has_arg ->
                      match h, has_arg with
                        | 803493184, false -> `Head
                        | 737453762, false -> `Body
                        | _ -> Atdgen_runtime.Ob_run.unsupported_variant h has_arg
                    )
                ) ib
              ))
            | _ -> Atdgen_runtime.Ob_run.unsupported_variant h has_arg
        )
)
let read_pkind = (
  fun ib ->
    if Bi_io.read_tag ib <> 23 then Atdgen_runtime.Ob_run.read_error_at ib;
    Bi_io.read_hashtag ib (fun ib h has_arg ->
      match h, has_arg with
        | 3607583, false -> `Hyp
        | -578069685, false -> `Concl
        | 4298439, true -> (`Var (
            (
              fun ib ->
                if Bi_io.read_tag ib <> 23 then Atdgen_runtime.Ob_run.read_error_at ib;
                Bi_io.read_hashtag ib (fun ib h has_arg ->
                  match h, has_arg with
                    | 803493184, false -> `Head
                    | 737453762, false -> `Body
                    | _ -> Atdgen_runtime.Ob_run.unsupported_variant h has_arg
                )
            ) ib
          ))
        | _ -> Atdgen_runtime.Ob_run.unsupported_variant h has_arg
    )
)
let pkind_of_string ?pos s =
  read_pkind (Bi_inbuf.from_string ?pos s)
let type__tag = Fo_b.type__tag
let write_untagged_type_ = (
  Fo_b.write_untagged_type_
)
let write_type_ ob x =
  Bi_io.write_tag ob Fo_b.type__tag;
  write_untagged_type_ ob x
let string_of_type_ ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_type_ ob x;
  Bi_outbuf.contents ob
let get_type__reader = (
  Fo_b.get_type__reader
)
let read_type_ = (
  Fo_b.read_type_
)
let type__of_string ?pos s =
  read_type_ (Bi_inbuf.from_string ?pos s)
let _5_tag = Bi_io.num_variant_tag
let write_untagged__5 = (
  Atdgen_runtime.Ob_run.write_untagged_option (
    fun ob x ->
      Bi_io.write_tag ob Bi_io.tuple_tag;
      Bi_vint.write_uvint ob 2;
      (
        let x, _ = x in (
          write_expr
        ) ob x
      );
      (
        let _, x = x in (
          write_type_
        ) ob x
      );
  )
)
let write__5 ob x =
  Bi_io.write_tag ob Bi_io.num_variant_tag;
  write_untagged__5 ob x
let string_of__5 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__5 ob x;
  Bi_outbuf.contents ob
let get__5_reader = (
  fun tag ->
    if tag <> 22 then Atdgen_runtime.Ob_run.read_error () else
      fun ib ->
        match Char.code (Bi_inbuf.read_char ib) with
          | 0 -> None
          | 0x80 ->
            Some (
              (
                fun ib ->
                  if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
                  let len = Bi_vint.read_uvint ib in
                  if len < 2 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1 ];
                  let x0 =
                    (
                      read_expr
                    ) ib
                  in
                  let x1 =
                    (
                      read_type_
                    ) ib
                  in
                  for i = 2 to len - 1 do Bi_io.skip ib done;
                  (x0, x1)
              )
                ib
            )
          | _ -> Atdgen_runtime.Ob_run.read_error_at ib
)
let read__5 = (
  fun ib ->
    if Bi_io.read_tag ib <> 22 then Atdgen_runtime.Ob_run.read_error_at ib;
    match Char.code (Bi_inbuf.read_char ib) with
      | 0 -> None
      | 0x80 ->
        Some (
          (
            fun ib ->
              if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
              let len = Bi_vint.read_uvint ib in
              if len < 2 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1 ];
              let x0 =
                (
                  read_expr
                ) ib
              in
              let x1 =
                (
                  read_type_
                ) ib
              in
              for i = 2 to len - 1 do Bi_io.skip ib done;
              (x0, x1)
          )
            ib
        )
      | _ -> Atdgen_runtime.Ob_run.read_error_at ib
)
let _5_of_string ?pos s =
  read__5 (Bi_inbuf.from_string ?pos s)
let uid_tag = Fo_b.uid_tag
let write_untagged_uid = (
  Fo_b.write_untagged_uid
)
let write_uid ob x =
  Bi_io.write_tag ob Fo_b.uid_tag;
  write_untagged_uid ob x
let string_of_uid ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_uid ob x;
  Bi_outbuf.contents ob
let get_uid_reader = (
  Fo_b.get_uid_reader
)
let read_uid = (
  Fo_b.read_uid
)
let uid_of_string ?pos s =
  read_uid (Bi_inbuf.from_string ?pos s)
let _6_tag = Bi_io.num_variant_tag
let write_untagged__6 = (
  Atdgen_runtime.Ob_run.write_untagged_option (
    write_uid
  )
)
let write__6 ob x =
  Bi_io.write_tag ob Bi_io.num_variant_tag;
  write_untagged__6 ob x
let string_of__6 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__6 ob x;
  Bi_outbuf.contents ob
let get__6_reader = (
  fun tag ->
    if tag <> 22 then Atdgen_runtime.Ob_run.read_error () else
      fun ib ->
        match Char.code (Bi_inbuf.read_char ib) with
          | 0 -> None
          | 0x80 ->
            Some (
              (
                read_uid
              )
                ib
            )
          | _ -> Atdgen_runtime.Ob_run.read_error_at ib
)
let read__6 = (
  fun ib ->
    if Bi_io.read_tag ib <> 22 then Atdgen_runtime.Ob_run.read_error_at ib;
    match Char.code (Bi_inbuf.read_char ib) with
      | 0 -> None
      | 0x80 ->
        Some (
          (
            read_uid
          )
            ib
        )
      | _ -> Atdgen_runtime.Ob_run.read_error_at ib
)
let _6_of_string ?pos s =
  read__6 (Bi_inbuf.from_string ?pos s)
let _7_tag = Bi_io.array_tag
let write_untagged__7 = (
  Atdgen_runtime.Ob_run.write_untagged_list
    uid_tag
    (
      write_untagged_uid
    )
)
let write__7 ob x =
  Bi_io.write_tag ob Bi_io.array_tag;
  write_untagged__7 ob x
let string_of__7 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__7 ob x;
  Bi_outbuf.contents ob
let get__7_reader = (
  Atdgen_runtime.Ob_run.get_list_reader (
    get_uid_reader
  )
)
let read__7 = (
  Atdgen_runtime.Ob_run.read_list (
    get_uid_reader
  )
)
let _7_of_string ?pos s =
  read__7 (Bi_inbuf.from_string ?pos s)
let _8_tag = Bi_io.array_tag
let write_untagged__8 = (
  Atdgen_runtime.Ob_run.write_untagged_list
    _7_tag
    (
      write_untagged__7
    )
)
let write__8 ob x =
  Bi_io.write_tag ob Bi_io.array_tag;
  write_untagged__8 ob x
let string_of__8 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__8 ob x;
  Bi_outbuf.contents ob
let get__8_reader = (
  Atdgen_runtime.Ob_run.get_list_reader (
    get__7_reader
  )
)
let read__8 = (
  Atdgen_runtime.Ob_run.read_list (
    get__7_reader
  )
)
let _8_of_string ?pos s =
  read__8 (Bi_inbuf.from_string ?pos s)
let ctxt_tag = Bi_io.record_tag
let write_untagged_ctxt : Bi_outbuf.t -> ctxt -> unit = (
  fun ob x ->
    Bi_vint.write_uvint ob 2;
    Bi_outbuf.add_char4 ob '\199' '\t' '\225' 'T';
    (
      write_pkind
    ) ob x.kind;
    Bi_outbuf.add_char4 ob '\183' '\253' '\131' '\168';
    (
      write_uid
    ) ob x.handle;
)
let write_ctxt ob x =
  Bi_io.write_tag ob Bi_io.record_tag;
  write_untagged_ctxt ob x
let string_of_ctxt ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_ctxt ob x;
  Bi_outbuf.contents ob
let get_ctxt_reader = (
  fun tag ->
    if tag <> 21 then Atdgen_runtime.Ob_run.read_error () else
      fun ib ->
        let field_kind = ref (Obj.magic (Sys.opaque_identity 0.0)) in
        let field_handle = ref (Obj.magic (Sys.opaque_identity 0.0)) in
        let bits0 = ref 0 in
        let len = Bi_vint.read_uvint ib in
        for i = 1 to len do
          match Bi_io.read_field_hashtag ib with
            | -955653804 ->
              field_kind := (
                (
                  read_pkind
                ) ib
              );
              bits0 := !bits0 lor 0x1;
            | 939361192 ->
              field_handle := (
                (
                  read_uid
                ) ib
              );
              bits0 := !bits0 lor 0x2;
            | _ -> Bi_io.skip ib
        done;
        if !bits0 <> 0x3 then Atdgen_runtime.Ob_run.missing_fields [| !bits0 |] [| "kind"; "handle" |];
        (
          {
            kind = !field_kind;
            handle = !field_handle;
          }
         : ctxt)
)
let read_ctxt = (
  fun ib ->
    if Bi_io.read_tag ib <> 21 then Atdgen_runtime.Ob_run.read_error_at ib;
    let field_kind = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_handle = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let bits0 = ref 0 in
    let len = Bi_vint.read_uvint ib in
    for i = 1 to len do
      match Bi_io.read_field_hashtag ib with
        | -955653804 ->
          field_kind := (
            (
              read_pkind
            ) ib
          );
          bits0 := !bits0 lor 0x1;
        | 939361192 ->
          field_handle := (
            (
              read_uid
            ) ib
          );
          bits0 := !bits0 lor 0x2;
        | _ -> Bi_io.skip ib
    done;
    if !bits0 <> 0x3 then Atdgen_runtime.Ob_run.missing_fields [| !bits0 |] [| "kind"; "handle" |];
    (
      {
        kind = !field_kind;
        handle = !field_handle;
      }
     : ctxt)
)
let ctxt_of_string ?pos s =
  read_ctxt (Bi_inbuf.from_string ?pos s)
let hyp_tag = Bi_io.record_tag
let write_untagged_hyp : Bi_outbuf.t -> hyp -> unit = (
  fun ob x ->
    Bi_vint.write_uvint ob 2;
    Bi_outbuf.add_char4 ob '\197' '\006' '\162' '\146';
    (
      write_uid
    ) ob x.h_id;
    Bi_outbuf.add_char4 ob '\139' '\239' '\003' '\187';
    (
      write_form
    ) ob x.h_form;
)
let write_hyp ob x =
  Bi_io.write_tag ob Bi_io.record_tag;
  write_untagged_hyp ob x
let string_of_hyp ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_hyp ob x;
  Bi_outbuf.contents ob
let get_hyp_reader = (
  fun tag ->
    if tag <> 21 then Atdgen_runtime.Ob_run.read_error () else
      fun ib ->
        let field_h_id = ref (Obj.magic (Sys.opaque_identity 0.0)) in
        let field_h_form = ref (Obj.magic (Sys.opaque_identity 0.0)) in
        let bits0 = ref 0 in
        let len = Bi_vint.read_uvint ib in
        for i = 1 to len do
          match Bi_io.read_field_hashtag ib with
            | -989420910 ->
              field_h_id := (
                (
                  read_uid
                ) ib
              );
              bits0 := !bits0 lor 0x1;
            | 200213435 ->
              field_h_form := (
                (
                  read_form
                ) ib
              );
              bits0 := !bits0 lor 0x2;
            | _ -> Bi_io.skip ib
        done;
        if !bits0 <> 0x3 then Atdgen_runtime.Ob_run.missing_fields [| !bits0 |] [| "h_id"; "h_form" |];
        (
          {
            h_id = !field_h_id;
            h_form = !field_h_form;
          }
         : hyp)
)
let read_hyp = (
  fun ib ->
    if Bi_io.read_tag ib <> 21 then Atdgen_runtime.Ob_run.read_error_at ib;
    let field_h_id = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_h_form = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let bits0 = ref 0 in
    let len = Bi_vint.read_uvint ib in
    for i = 1 to len do
      match Bi_io.read_field_hashtag ib with
        | -989420910 ->
          field_h_id := (
            (
              read_uid
            ) ib
          );
          bits0 := !bits0 lor 0x1;
        | 200213435 ->
          field_h_form := (
            (
              read_form
            ) ib
          );
          bits0 := !bits0 lor 0x2;
        | _ -> Bi_io.skip ib
    done;
    if !bits0 <> 0x3 then Atdgen_runtime.Ob_run.missing_fields [| !bits0 |] [| "h_id"; "h_form" |];
    (
      {
        h_id = !field_h_id;
        h_form = !field_h_form;
      }
     : hyp)
)
let hyp_of_string ?pos s =
  read_hyp (Bi_inbuf.from_string ?pos s)
let _1_tag = Bi_io.array_tag
let write_untagged__1 = (
  Atdgen_runtime.Ob_run.write_untagged_list
    hyp_tag
    (
      write_untagged_hyp
    )
)
let write__1 ob x =
  Bi_io.write_tag ob Bi_io.array_tag;
  write_untagged__1 ob x
let string_of__1 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__1 ob x;
  Bi_outbuf.contents ob
let get__1_reader = (
  Atdgen_runtime.Ob_run.get_list_reader (
    get_hyp_reader
  )
)
let read__1 = (
  Atdgen_runtime.Ob_run.read_list (
    get_hyp_reader
  )
)
let _1_of_string ?pos s =
  read__1 (Bi_inbuf.from_string ?pos s)
let goal_tag = Bi_io.record_tag
let write_untagged_goal : Bi_outbuf.t -> goal -> unit = (
  fun ob x ->
    Bi_vint.write_uvint ob 3;
    Bi_outbuf.add_char4 ob '\141' '^' '\b' '\213';
    (
      write_env
    ) ob x.g_env;
    Bi_outbuf.add_char4 ob '\166' '\237' '\169' 'l';
    (
      write__1
    ) ob x.g_hyps;
    Bi_outbuf.add_char4 ob '\129' 'g' '\250' 'S';
    (
      write_form
    ) ob x.g_concl;
)
let write_goal ob x =
  Bi_io.write_tag ob Bi_io.record_tag;
  write_untagged_goal ob x
let string_of_goal ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_goal ob x;
  Bi_outbuf.contents ob
let get_goal_reader = (
  fun tag ->
    if tag <> 21 then Atdgen_runtime.Ob_run.read_error () else
      fun ib ->
        let field_g_env = ref (Obj.magic (Sys.opaque_identity 0.0)) in
        let field_g_hyps = ref (Obj.magic (Sys.opaque_identity 0.0)) in
        let field_g_concl = ref (Obj.magic (Sys.opaque_identity 0.0)) in
        let bits0 = ref 0 in
        let len = Bi_vint.read_uvint ib in
        for i = 1 to len do
          match Bi_io.read_field_hashtag ib with
            | 224266453 ->
              field_g_env := (
                (
                  read_env
                ) ib
              );
              bits0 := !bits0 lor 0x1;
            | 653109612 ->
              field_g_hyps := (
                (
                  read__1
                ) ib
              );
              bits0 := !bits0 lor 0x2;
            | 23591507 ->
              field_g_concl := (
                (
                  read_form
                ) ib
              );
              bits0 := !bits0 lor 0x4;
            | _ -> Bi_io.skip ib
        done;
        if !bits0 <> 0x7 then Atdgen_runtime.Ob_run.missing_fields [| !bits0 |] [| "g_env"; "g_hyps"; "g_concl" |];
        (
          {
            g_env = !field_g_env;
            g_hyps = !field_g_hyps;
            g_concl = !field_g_concl;
          }
         : goal)
)
let read_goal = (
  fun ib ->
    if Bi_io.read_tag ib <> 21 then Atdgen_runtime.Ob_run.read_error_at ib;
    let field_g_env = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_g_hyps = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_g_concl = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let bits0 = ref 0 in
    let len = Bi_vint.read_uvint ib in
    for i = 1 to len do
      match Bi_io.read_field_hashtag ib with
        | 224266453 ->
          field_g_env := (
            (
              read_env
            ) ib
          );
          bits0 := !bits0 lor 0x1;
        | 653109612 ->
          field_g_hyps := (
            (
              read__1
            ) ib
          );
          bits0 := !bits0 lor 0x2;
        | 23591507 ->
          field_g_concl := (
            (
              read_form
            ) ib
          );
          bits0 := !bits0 lor 0x4;
        | _ -> Bi_io.skip ib
    done;
    if !bits0 <> 0x7 then Atdgen_runtime.Ob_run.missing_fields [| !bits0 |] [| "g_env"; "g_hyps"; "g_concl" |];
    (
      {
        g_env = !field_g_env;
        g_hyps = !field_g_hyps;
        g_concl = !field_g_concl;
      }
     : goal)
)
let goal_of_string ?pos s =
  read_goal (Bi_inbuf.from_string ?pos s)
let intro_pat_tag = Bi_io.array_tag
let write_untagged_intro_pat = (
  write_untagged__8
)
let write_intro_pat ob x =
  Bi_io.write_tag ob Bi_io.array_tag;
  write_untagged_intro_pat ob x
let string_of_intro_pat ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_intro_pat ob x;
  Bi_outbuf.contents ob
let get_intro_pat_reader = (
  get__8_reader
)
let read_intro_pat = (
  read__8
)
let intro_pat_of_string ?pos s =
  read_intro_pat (Bi_inbuf.from_string ?pos s)
let ipath_tag = Bi_io.record_tag
let write_untagged_ipath : Bi_outbuf.t -> ipath -> unit = (
  fun ob x ->
    Bi_vint.write_uvint ob 3;
    Bi_outbuf.add_char4 ob '\203' '\174' '\238' '"';
    (
      write_uid
    ) ob x.root;
    Bi_outbuf.add_char4 ob '\193' '\200' '\141' '\237';
    (
      write_ctxt
    ) ob x.ctxt;
    Bi_outbuf.add_char4 ob '\128' 'W' '\169' '\128';
    (
      write__2
    ) ob x.sub;
)
let write_ipath ob x =
  Bi_io.write_tag ob Bi_io.record_tag;
  write_untagged_ipath ob x
let string_of_ipath ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_ipath ob x;
  Bi_outbuf.contents ob
let get_ipath_reader = (
  fun tag ->
    if tag <> 21 then Atdgen_runtime.Ob_run.read_error () else
      fun ib ->
        let field_root = ref (Obj.magic (Sys.opaque_identity 0.0)) in
        let field_ctxt = ref (Obj.magic (Sys.opaque_identity 0.0)) in
        let field_sub = ref (Obj.magic (Sys.opaque_identity 0.0)) in
        let bits0 = ref 0 in
        let len = Bi_vint.read_uvint ib in
        for i = 1 to len do
          match Bi_io.read_field_hashtag ib with
            | -877728222 ->
              field_root := (
                (
                  read_uid
                ) ib
              );
              bits0 := !bits0 lor 0x1;
            | -1043821075 ->
              field_ctxt := (
                (
                  read_ctxt
                ) ib
              );
              bits0 := !bits0 lor 0x2;
            | 5745024 ->
              field_sub := (
                (
                  read__2
                ) ib
              );
              bits0 := !bits0 lor 0x4;
            | _ -> Bi_io.skip ib
        done;
        if !bits0 <> 0x7 then Atdgen_runtime.Ob_run.missing_fields [| !bits0 |] [| "root"; "ctxt"; "sub" |];
        (
          {
            root = !field_root;
            ctxt = !field_ctxt;
            sub = !field_sub;
          }
         : ipath)
)
let read_ipath = (
  fun ib ->
    if Bi_io.read_tag ib <> 21 then Atdgen_runtime.Ob_run.read_error_at ib;
    let field_root = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_ctxt = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_sub = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let bits0 = ref 0 in
    let len = Bi_vint.read_uvint ib in
    for i = 1 to len do
      match Bi_io.read_field_hashtag ib with
        | -877728222 ->
          field_root := (
            (
              read_uid
            ) ib
          );
          bits0 := !bits0 lor 0x1;
        | -1043821075 ->
          field_ctxt := (
            (
              read_ctxt
            ) ib
          );
          bits0 := !bits0 lor 0x2;
        | 5745024 ->
          field_sub := (
            (
              read__2
            ) ib
          );
          bits0 := !bits0 lor 0x4;
        | _ -> Bi_io.skip ib
    done;
    if !bits0 <> 0x7 then Atdgen_runtime.Ob_run.missing_fields [| !bits0 |] [| "root"; "ctxt"; "sub" |];
    (
      {
        root = !field_root;
        ctxt = !field_ctxt;
        sub = !field_sub;
      }
     : ipath)
)
let ipath_of_string ?pos s =
  read_ipath (Bi_inbuf.from_string ?pos s)
let action_tag = Bi_io.variant_tag
let write_untagged_action = (
  fun ob x ->
    match x with
      | `AId -> Bi_outbuf.add_char4 ob '\000' '1' '\146' '|'
      | `ADef x ->
        Bi_outbuf.add_char4 ob '\171' '*' '\208' '\004';
        (
          fun ob x ->
            Bi_io.write_tag ob Bi_io.tuple_tag;
            Bi_vint.write_uvint ob 2;
            (
              let x, _ = x in (
                fun ob x ->
                  Bi_io.write_tag ob Bi_io.tuple_tag;
                  Bi_vint.write_uvint ob 2;
                  (
                    let x, _ = x in (
                      write_type_
                    ) ob x
                  );
                  (
                    let _, x = x in (
                      write__3
                    ) ob x
                  );
              ) ob x
            );
            (
              let _, x = x in (
                write_uid
              ) ob x
            );
        ) ob x
      | `AIntro x ->
        Bi_outbuf.add_char4 ob '\206' '\128' '\174' 'k';
        (
          fun ob x ->
            Bi_io.write_tag ob Bi_io.tuple_tag;
            Bi_vint.write_uvint ob 2;
            (
              let x, _ = x in (
                Bi_io.write_svint
              ) ob x
            );
            (
              let _, x = x in (
                write__5
              ) ob x
            );
        ) ob x
      | `AElim x ->
        Bi_outbuf.add_char4 ob '\154' '\249' '\188' '\236';
        (
          write_uid
        ) ob x
      | `AExact x ->
        Bi_outbuf.add_char4 ob '\135' 't' '\006' '\190';
        (
          write_uid
        ) ob x
      | `ACut x ->
        Bi_outbuf.add_char4 ob '\171' '*' '\027' '\193';
        (
          fun ob x ->
            Bi_io.write_tag ob Bi_io.tuple_tag;
            Bi_vint.write_uvint ob 2;
            (
              let x, _ = x in (
                write_form
              ) ob x
            );
            (
              let _, x = x in (
                write_uid
              ) ob x
            );
        ) ob x
      | `AAssume x ->
        Bi_outbuf.add_char4 ob '\143' '\151' '\001' '\141';
        (
          fun ob x ->
            Bi_io.write_tag ob Bi_io.tuple_tag;
            Bi_vint.write_uvint ob 2;
            (
              let x, _ = x in (
                write_form
              ) ob x
            );
            (
              let _, x = x in (
                write_uid
              ) ob x
            );
        ) ob x
      | `AGeneralize x ->
        Bi_outbuf.add_char4 ob '\248' 'D' 'T' '\205';
        (
          write_uid
        ) ob x
      | `AMove x ->
        Bi_outbuf.add_char4 ob '\160' 'E' '\195' '\242';
        (
          fun ob x ->
            Bi_io.write_tag ob Bi_io.tuple_tag;
            Bi_vint.write_uvint ob 2;
            (
              let x, _ = x in (
                write_uid
              ) ob x
            );
            (
              let _, x = x in (
                write__6
              ) ob x
            );
        ) ob x
      | `ADuplicate x ->
        Bi_outbuf.add_char4 ob '\149' '\210' 'q' '\n';
        (
          write_uid
        ) ob x
      | `ALink x ->
        Bi_outbuf.add_char4 ob '\159' '\151' '\248' '\219';
        (
          fun ob x ->
            Bi_io.write_tag ob Bi_io.tuple_tag;
            Bi_vint.write_uvint ob 3;
            (
              let x, _, _ = x in (
                write_ipath
              ) ob x
            );
            (
              let _, x, _ = x in (
                write_ipath
              ) ob x
            );
            (
              let _, _, x = x in (
                write_itrace
              ) ob x
            );
        ) ob x
)
let write_action ob x =
  Bi_io.write_tag ob Bi_io.variant_tag;
  write_untagged_action ob x
let string_of_action ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_action ob x;
  Bi_outbuf.contents ob
let get_action_reader = (
  fun tag ->
    if tag <> 23 then Atdgen_runtime.Ob_run.read_error () else
      fun ib ->
        Bi_io.read_hashtag ib (fun ib h has_arg ->
          match h, has_arg with
            | 3248764, false -> `AId
            | 724226052, true -> (`ADef (
                (
                  fun ib ->
                    if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
                    let len = Bi_vint.read_uvint ib in
                    if len < 2 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1 ];
                    let x0 =
                      (
                        fun ib ->
                          if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
                          let len = Bi_vint.read_uvint ib in
                          if len < 2 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1 ];
                          let x0 =
                            (
                              read_type_
                            ) ib
                          in
                          let x1 =
                            (
                              read__3
                            ) ib
                          in
                          for i = 2 to len - 1 do Bi_io.skip ib done;
                          (x0, x1)
                      ) ib
                    in
                    let x1 =
                      (
                        read_uid
                      ) ib
                    in
                    for i = 2 to len - 1 do Bi_io.skip ib done;
                    (x0, x1)
                ) ib
              ))
            | -830427541, true -> (`AIntro (
                (
                  fun ib ->
                    if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
                    let len = Bi_vint.read_uvint ib in
                    if len < 2 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1 ];
                    let x0 =
                      (
                        Atdgen_runtime.Ob_run.read_int
                      ) ib
                    in
                    let x1 =
                      (
                        read__5
                      ) ib
                    in
                    for i = 2 to len - 1 do Bi_io.skip ib done;
                    (x0, x1)
                ) ib
              ))
            | 452574444, true -> (`AElim (
                (
                  read_uid
                ) ib
              ))
            | 125044414, true -> (`AExact (
                (
                  read_uid
                ) ib
              ))
            | 724179905, true -> (`ACut (
                (
                  fun ib ->
                    if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
                    let len = Bi_vint.read_uvint ib in
                    if len < 2 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1 ];
                    let x0 =
                      (
                        read_form
                      ) ib
                    in
                    let x1 =
                      (
                        read_uid
                      ) ib
                    in
                    for i = 2 to len - 1 do Bi_io.skip ib done;
                    (x0, x1)
                ) ib
              ))
            | 261554573, true -> (`AAssume (
                (
                  fun ib ->
                    if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
                    let len = Bi_vint.read_uvint ib in
                    if len < 2 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1 ];
                    let x0 =
                      (
                        read_form
                      ) ib
                    in
                    let x1 =
                      (
                        read_uid
                      ) ib
                    in
                    for i = 2 to len - 1 do Bi_io.skip ib done;
                    (x0, x1)
                ) ib
              ))
            | -129739571, true -> (`AGeneralize (
                (
                  read_uid
                ) ib
              ))
            | 541443058, true -> (`AMove (
                (
                  fun ib ->
                    if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
                    let len = Bi_vint.read_uvint ib in
                    if len < 2 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1 ];
                    let x0 =
                      (
                        read_uid
                      ) ib
                    in
                    let x1 =
                      (
                        read__6
                      ) ib
                    in
                    for i = 2 to len - 1 do Bi_io.skip ib done;
                    (x0, x1)
                ) ib
              ))
            | 366113034, true -> (`ADuplicate (
                (
                  read_uid
                ) ib
              ))
            | 530053339, true -> (`ALink (
                (
                  fun ib ->
                    if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
                    let len = Bi_vint.read_uvint ib in
                    if len < 3 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1; 2 ];
                    let x0 =
                      (
                        read_ipath
                      ) ib
                    in
                    let x1 =
                      (
                        read_ipath
                      ) ib
                    in
                    let x2 =
                      (
                        read_itrace
                      ) ib
                    in
                    for i = 3 to len - 1 do Bi_io.skip ib done;
                    (x0, x1, x2)
                ) ib
              ))
            | _ -> Atdgen_runtime.Ob_run.unsupported_variant h has_arg
        )
)
let read_action = (
  fun ib ->
    if Bi_io.read_tag ib <> 23 then Atdgen_runtime.Ob_run.read_error_at ib;
    Bi_io.read_hashtag ib (fun ib h has_arg ->
      match h, has_arg with
        | 3248764, false -> `AId
        | 724226052, true -> (`ADef (
            (
              fun ib ->
                if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
                let len = Bi_vint.read_uvint ib in
                if len < 2 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1 ];
                let x0 =
                  (
                    fun ib ->
                      if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
                      let len = Bi_vint.read_uvint ib in
                      if len < 2 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1 ];
                      let x0 =
                        (
                          read_type_
                        ) ib
                      in
                      let x1 =
                        (
                          read__3
                        ) ib
                      in
                      for i = 2 to len - 1 do Bi_io.skip ib done;
                      (x0, x1)
                  ) ib
                in
                let x1 =
                  (
                    read_uid
                  ) ib
                in
                for i = 2 to len - 1 do Bi_io.skip ib done;
                (x0, x1)
            ) ib
          ))
        | -830427541, true -> (`AIntro (
            (
              fun ib ->
                if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
                let len = Bi_vint.read_uvint ib in
                if len < 2 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1 ];
                let x0 =
                  (
                    Atdgen_runtime.Ob_run.read_int
                  ) ib
                in
                let x1 =
                  (
                    read__5
                  ) ib
                in
                for i = 2 to len - 1 do Bi_io.skip ib done;
                (x0, x1)
            ) ib
          ))
        | 452574444, true -> (`AElim (
            (
              read_uid
            ) ib
          ))
        | 125044414, true -> (`AExact (
            (
              read_uid
            ) ib
          ))
        | 724179905, true -> (`ACut (
            (
              fun ib ->
                if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
                let len = Bi_vint.read_uvint ib in
                if len < 2 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1 ];
                let x0 =
                  (
                    read_form
                  ) ib
                in
                let x1 =
                  (
                    read_uid
                  ) ib
                in
                for i = 2 to len - 1 do Bi_io.skip ib done;
                (x0, x1)
            ) ib
          ))
        | 261554573, true -> (`AAssume (
            (
              fun ib ->
                if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
                let len = Bi_vint.read_uvint ib in
                if len < 2 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1 ];
                let x0 =
                  (
                    read_form
                  ) ib
                in
                let x1 =
                  (
                    read_uid
                  ) ib
                in
                for i = 2 to len - 1 do Bi_io.skip ib done;
                (x0, x1)
            ) ib
          ))
        | -129739571, true -> (`AGeneralize (
            (
              read_uid
            ) ib
          ))
        | 541443058, true -> (`AMove (
            (
              fun ib ->
                if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
                let len = Bi_vint.read_uvint ib in
                if len < 2 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1 ];
                let x0 =
                  (
                    read_uid
                  ) ib
                in
                let x1 =
                  (
                    read__6
                  ) ib
                in
                for i = 2 to len - 1 do Bi_io.skip ib done;
                (x0, x1)
            ) ib
          ))
        | 366113034, true -> (`ADuplicate (
            (
              read_uid
            ) ib
          ))
        | 530053339, true -> (`ALink (
            (
              fun ib ->
                if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
                let len = Bi_vint.read_uvint ib in
                if len < 3 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1; 2 ];
                let x0 =
                  (
                    read_ipath
                  ) ib
                in
                let x1 =
                  (
                    read_ipath
                  ) ib
                in
                let x2 =
                  (
                    read_itrace
                  ) ib
                in
                for i = 3 to len - 1 do Bi_io.skip ib done;
                (x0, x1, x2)
            ) ib
          ))
        | _ -> Atdgen_runtime.Ob_run.unsupported_variant h has_arg
    )
)
let action_of_string ?pos s =
  read_action (Bi_inbuf.from_string ?pos s)
let rec _9_tag = Bi_io.array_tag
and write_untagged__9 ob x = (
  Atdgen_runtime.Ob_run.write_untagged_list
    proof_tag
    (
      write_untagged_proof
    )
) ob x
and write__9 ob x =
  Bi_io.write_tag ob Bi_io.array_tag;
  write_untagged__9 ob x
and string_of__9 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__9 ob x;
  Bi_outbuf.contents ob
and proof_tag = Bi_io.variant_tag
and write_untagged_proof = (
  fun ob x ->
    match x with
      | `PNode x ->
        Bi_outbuf.add_char4 ob '\195' '\241' '\158' 'r';
        (
          fun ob x ->
            Bi_io.write_tag ob Bi_io.tuple_tag;
            Bi_vint.write_uvint ob 4;
            (
              let x, _, _, _ = x in (
                write_action
              ) ob x
            );
            (
              let _, x, _, _ = x in (
                write_goal
              ) ob x
            );
            (
              let _, _, x, _ = x in (
                write_intro_pat
              ) ob x
            );
            (
              let _, _, _, x = x in (
                write__9
              ) ob x
            );
        ) ob x
)
and write_proof ob x =
  Bi_io.write_tag ob Bi_io.variant_tag;
  write_untagged_proof ob x
and string_of_proof ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_proof ob x;
  Bi_outbuf.contents ob
let rec get__9_reader tag = (
  Atdgen_runtime.Ob_run.get_list_reader (
    get_proof_reader
  )
) tag
and read__9 ib = (
  Atdgen_runtime.Ob_run.read_list (
    get_proof_reader
  )
) ib
and _9_of_string ?pos s =
  read__9 (Bi_inbuf.from_string ?pos s)
and get_proof_reader = (
  fun tag ->
    if tag <> 23 then Atdgen_runtime.Ob_run.read_error () else
      fun ib ->
        Bi_io.read_hashtag ib (fun ib h has_arg ->
          match h, has_arg with
            | -1007575438, true -> (`PNode (
                (
                  fun ib ->
                    if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
                    let len = Bi_vint.read_uvint ib in
                    if len < 4 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1; 2; 3 ];
                    let x0 =
                      (
                        read_action
                      ) ib
                    in
                    let x1 =
                      (
                        read_goal
                      ) ib
                    in
                    let x2 =
                      (
                        read_intro_pat
                      ) ib
                    in
                    let x3 =
                      (
                        read__9
                      ) ib
                    in
                    for i = 4 to len - 1 do Bi_io.skip ib done;
                    (x0, x1, x2, x3)
                ) ib
              ))
            | _ -> Atdgen_runtime.Ob_run.unsupported_variant h has_arg
        )
)
and read_proof = (
  fun ib ->
    if Bi_io.read_tag ib <> 23 then Atdgen_runtime.Ob_run.read_error_at ib;
    Bi_io.read_hashtag ib (fun ib h has_arg ->
      match h, has_arg with
        | -1007575438, true -> (`PNode (
            (
              fun ib ->
                if Bi_io.read_tag ib <> 20 then Atdgen_runtime.Ob_run.read_error_at ib;
                let len = Bi_vint.read_uvint ib in
                if len < 4 then Atdgen_runtime.Ob_run.missing_tuple_fields len [ 0; 1; 2; 3 ];
                let x0 =
                  (
                    read_action
                  ) ib
                in
                let x1 =
                  (
                    read_goal
                  ) ib
                in
                let x2 =
                  (
                    read_intro_pat
                  ) ib
                in
                let x3 =
                  (
                    read__9
                  ) ib
                in
                for i = 4 to len - 1 do Bi_io.skip ib done;
                (x0, x1, x2, x3)
            ) ib
          ))
        | _ -> Atdgen_runtime.Ob_run.unsupported_variant h has_arg
    )
)
and proof_of_string ?pos s =
  read_proof (Bi_inbuf.from_string ?pos s)
let vname_tag = Fo_b.vname_tag
let write_untagged_vname = (
  Fo_b.write_untagged_vname
)
let write_vname ob x =
  Bi_io.write_tag ob Fo_b.vname_tag;
  write_untagged_vname ob x
let string_of_vname ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_vname ob x;
  Bi_outbuf.contents ob
let get_vname_reader = (
  Fo_b.get_vname_reader
)
let read_vname = (
  Fo_b.read_vname
)
let vname_of_string ?pos s =
  read_vname (Bi_inbuf.from_string ?pos s)
let term_tag = Fo_b.term_tag
let write_untagged_term = (
  Fo_b.write_untagged_term
)
let write_term ob x =
  Bi_io.write_tag ob Fo_b.term_tag;
  write_untagged_term ob x
let string_of_term ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_term ob x;
  Bi_outbuf.contents ob
let get_term_reader = (
  Fo_b.get_term_reader
)
let read_term = (
  Fo_b.read_term
)
let term_of_string ?pos s =
  read_term (Bi_inbuf.from_string ?pos s)
let sig__tag = Fo_b.sig__tag
let write_untagged_sig_ = (
  Fo_b.write_untagged_sig_
)
let write_sig_ ob x =
  Bi_io.write_tag ob Fo_b.sig__tag;
  write_untagged_sig_ ob x
let string_of_sig_ ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_sig_ ob x;
  Bi_outbuf.contents ob
let get_sig__reader = (
  Fo_b.get_sig__reader
)
let read_sig_ = (
  Fo_b.read_sig_
)
let sig__of_string ?pos s =
  read_sig_ (Bi_inbuf.from_string ?pos s)
let name_tag = Fo_b.name_tag
let write_untagged_name = (
  Fo_b.write_untagged_name
)
let write_name ob x =
  Bi_io.write_tag ob Fo_b.name_tag;
  write_untagged_name ob x
let string_of_name ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_name ob x;
  Bi_outbuf.contents ob
let get_name_reader = (
  Fo_b.get_name_reader
)
let read_name = (
  Fo_b.read_name
)
let name_of_string ?pos s =
  read_name (Bi_inbuf.from_string ?pos s)
let logcon_tag = Fo_b.logcon_tag
let write_untagged_logcon = (
  Fo_b.write_untagged_logcon
)
let write_logcon ob x =
  Bi_io.write_tag ob Fo_b.logcon_tag;
  write_untagged_logcon ob x
let string_of_logcon ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_logcon ob x;
  Bi_outbuf.contents ob
let get_logcon_reader = (
  Fo_b.get_logcon_reader
)
let read_logcon = (
  Fo_b.read_logcon
)
let logcon_of_string ?pos s =
  read_logcon (Bi_inbuf.from_string ?pos s)
let bvar_tag = Fo_b.bvar_tag
let write_untagged_bvar = (
  Fo_b.write_untagged_bvar
)
let write_bvar ob x =
  Bi_io.write_tag ob Fo_b.bvar_tag;
  write_untagged_bvar ob x
let string_of_bvar ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_bvar ob x;
  Bi_outbuf.contents ob
let get_bvar_reader = (
  Fo_b.get_bvar_reader
)
let read_bvar = (
  Fo_b.read_bvar
)
let bvar_of_string ?pos s =
  read_bvar (Bi_inbuf.from_string ?pos s)
let bkind_tag = Fo_b.bkind_tag
let write_untagged_bkind = (
  Fo_b.write_untagged_bkind
)
let write_bkind ob x =
  Bi_io.write_tag ob Fo_b.bkind_tag;
  write_untagged_bkind ob x
let string_of_bkind ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_bkind ob x;
  Bi_outbuf.contents ob
let get_bkind_reader = (
  Fo_b.get_bkind_reader
)
let read_bkind = (
  Fo_b.read_bkind
)
let bkind_of_string ?pos s =
  read_bkind (Bi_inbuf.from_string ?pos s)
let arity_tag = Fo_b.arity_tag
let write_untagged_arity = (
  Fo_b.write_untagged_arity
)
let write_arity ob x =
  Bi_io.write_tag ob Fo_b.arity_tag;
  write_untagged_arity ob x
let string_of_arity ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_arity ob x;
  Bi_outbuf.contents ob
let get_arity_reader = (
  Fo_b.get_arity_reader
)
let read_arity = (
  Fo_b.read_arity
)
let arity_of_string ?pos s =
  read_arity (Bi_inbuf.from_string ?pos s)
