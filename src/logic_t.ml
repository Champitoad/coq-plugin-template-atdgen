(* Auto-generated from "logic.atd" *)
[@@@ocaml.warning "-27-32-33-35-39"]

type env = Fo_t.env

type expr = Fo_t.expr

type choice = (int * expr option)

type form = Fo_t.form

type itrace = choice list

type pkind = [ `Hyp | `Concl | `Var of [ `Head | `Body ] ]

type type_ = Fo_t.type_

type uid = Fo_t.uid

type ctxt = { kind: pkind; handle: uid }

type hyp = { h_id: uid; h_form: form }

type goal = { g_env: env; g_hyps: hyp list; g_concl: form }

type intro_pat = uid list list

type ipath = { root: uid; ctxt: ctxt; sub: int list }

type action = [
    `AId
  | `ADef of ((type_ * expr option) * uid)
  | `AIntro of (int * (expr * type_) option)
  | `AElim of uid
  | `AExact of uid
  | `ACut of (form * uid)
  | `AAssume of (form * uid)
  | `AGeneralize of uid
  | `AMove of (uid * uid option)
  | `ADuplicate of uid
  | `ALink of (ipath * ipath * itrace)
]

type proof = [ `PNode of (action * goal * intro_pat * proof list) ]

type vname = Fo_t.vname

type term = Fo_t.term

type sig_ = Fo_t.sig_

type name = Fo_t.name

type logcon = Fo_t.logcon

type bvar = Fo_t.bvar

type bkind = Fo_t.bkind

type arity = Fo_t.arity
