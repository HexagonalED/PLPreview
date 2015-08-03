type metro = STATION of name
| AREA of name * metro
| CONNECT of metro * metro
and name = string
;;


let rec checkMetro_sub met li =
(*val checkMetro_sub : metro * list -> bool*)
  match met with
  | AREA(str, met_sub) -> (checkMetro_sub met_sub (append [str] li))
  | CONNECT(met1, met2) -> (checkMetro_sub met1 li) && (checkMetro_sub met2 li)
  | STATION(str) -> if (mem str li) then true else false
;;
         

let checkMetro met =
  match met with
  | AREA(str, met_sub) -> (checkMetro_sub metsub [str])
  | CONNECT(met1, met2) -> (checkMetro_sub met1 []) && (checkMetro_sub met2 [])
  | STATION(str) -> false
;;

