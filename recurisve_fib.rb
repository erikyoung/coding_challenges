n1 = 1
n2 = 2
seq = []
seq.push(n1,n2)
n3 = n1 + n2

begin 
  seq << n3
  n1 = n2
  n2 = n3
  n3 = n1 + n2
end while n3 < 35

puts seq