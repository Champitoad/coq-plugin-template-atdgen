(* Auto-generated from "fo.atd" *)
[@@@ocaml.warning "-27-32-33-35-39"]

type bkind = [ `Forall | `Exist ]

type logcon = [ `And | `Or | `Imp | `Equiv | `Not ]

type name = string

type vname = (name * int)

type type_ = [
    `TVar of vname
  | `TUnit
  | `TProd of (type_ * type_)
  | `TOr of (type_ * type_)
  | `TRec of (name * type_)
]

type expr = [ `EVar of vname | `EFun of (name * expr list) ]

type form = [
    `FTrue
  | `FFalse
  | `FPred of (name * expr list)
  | `FConn of (logcon * form list)
  | `FBind of (bkind * name * type_ * form)
]

type uid = int

type term = [ `F of form | `E of expr ]

type arity = type_ list

type sig_ = (arity * type_)

type bvar = (type_ * expr option)

type env = {
  env_prp: (name * arity) list;
  env_fun: (name * sig_) list;
  env_var: (name * bvar list) list;
  env_tvar: (name * type_ option list) list;
  env_handles: (vname * uid) list
}
