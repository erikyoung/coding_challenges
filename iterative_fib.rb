
def fibonacci(n)
  n1 = 1
  n2 = 2
  n3 = n1 + n2

  n.times do 
    n3 = n1
    n1 = n2
    n2 = n3 + n1
  end
  return n1  
end

8.times do |n|
    result = fibonacci(n)
    puts result
end
  
#0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...

  
    

    
  
    
  







# [0, 1, 2, 3, 5, 8, 13, 21, 34,]

#fibonacci = Fibonacci.new([[n1,n2,n3,n4,n5,n6,n7,n8]])
