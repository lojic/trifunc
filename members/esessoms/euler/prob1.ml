#!/usr/bin/env ocaml

(*
  If we list all the natural numbers below 10 that are multiples
  of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.
*)

let prob1 =
  let sum = ref 0 in
  for i = 0 to 999 do
    if i mod 3 == 0 || i mod 5 == 0 then sum := !sum + i
  done; !sum;;

(* 233168 *)
print_int prob1;;
