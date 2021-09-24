fun fibAux(x | y | z) =
  if x == 0 then y
  else    
    if x == 1 then z
    else fibAux(x - 1 | z | y + z),

fun fib(x) =
  fibAux(x | 0 | 1)
