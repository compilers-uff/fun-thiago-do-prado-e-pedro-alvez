fun fatAux(x | acc) =
  if x == 0
  then acc
  else fatAux(x - 1 | acc * x),

fun fat(x) =
  fatAux(x | 1),

fun apply(f | x) =
  f(x)
