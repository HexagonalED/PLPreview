let rec sigma a b func = 
  (* val sigma : int * int * (int -> int) -> int*)
  if a==b then (func a) else (sigma (a+1) b func)+(func a);;

print_int (sigma 1 10 succ);;
