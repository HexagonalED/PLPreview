type nat = ZERO | SUCC of nat;;

let rec natadd n1 n2 = 
(*val natadd : nat * nat -> nat*)
  match n2 with
  | ZERO -> (match n1 with
            | ZERO -> 0
            | SUCC(n) -> (natadd n ZERO)+1)
  | SUCC(nprime) -> (match n1 with
                    | ZERO -> (natadd nprime ZERO)+1
                    | SUCC(n) -> (natadd n nprime)+2);;
  

let rec natmul n1 n2 =
(*val natmul : nat * nat -> nat*)
  match n2 with 
  | ZERO -> 0
  | SUCC(nprime) -> (match n1 with
                    | ZERO -> 0
                    | SUCC(n) -> (natmul n nprime)+(natadd n ZERO)+(natadd nprime ZERO)+1);;
  



