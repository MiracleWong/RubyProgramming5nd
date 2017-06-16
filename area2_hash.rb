def area2(x: 0, y: 0, z: 0)
  xy = x * y
  yz = y * z
  zx = z * x
  (xy + yz + zx ) * 2
end
args1 = {x: 2, y: 3, z: 4}
p area2(args1)

args2 = {x: 2, y: 3}
p area2(args2)
