# Problem 1: https://projecteuler.net/problem=1
# Ported from Racket version

function sum_3_5 (limit)
  function sum_3(n, accum)
    if n >= limit
      accum
    else
      sum_3(n + 3, accum + n)
    end
  end

  function sum_5(n, accum)
    if n >= limit
      accum
    else
      sum_5(n + 5, accum + (((n % 3) == 0) ? 0 : n))
    end
  end

  sum_3(3, 0) + sum_5(5, 0)
end

sum_3_5(1000)