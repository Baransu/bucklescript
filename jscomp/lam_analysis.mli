(* OCamlScript compiler
 * Copyright (C) 2015-2016 Bloomberg Finance L.P.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, with linking exception;
 * either version 2.1 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 *)

(* Author: Hongbo Zhang  *)

(** A module which provides some basic analysis over lambda expression *)

(** No side effect, but it might depend on data store *)
val no_side_effects : Lambda.lambda -> bool 

val size : Lambda.lambda -> int

val eq_lambda : Lambda.lambda -> Lambda.lambda -> bool 
(** a conservative version of comparing two lambdas, mostly 
    for looking for similar cases in switch
 *)

(** [is_closed_by map lam]
    return [true] if all unbound variables
    belongs to the given [map] *)
val is_closed_by : Lambda.IdentSet.t -> Lambda.lambda -> bool

val is_closed : Lambda.lambda -> bool


val small_inline_size : int 
val exit_inline_size : int 