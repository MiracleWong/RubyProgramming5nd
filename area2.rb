def area2(x: 0, y: 0, z: 0)
  xy = x * y
  yz = y * z
  zx = z * x
  (xy + yz + zx ) * 2
end
p area2(x: 2, y: 3, z: 4) 
p area2(z: 4, y: 3, x: 2) 
p area2(x: 2, z: 3) 
