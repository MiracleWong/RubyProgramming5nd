def foo(a, b, c)
  a + b + c
end

p foo(1, 2, 3)

args1 = [2, 3]
p foo(1, *args1)

args2 = [1, 2, 3]
p foo(*args2)
