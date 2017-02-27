#need to calculate the 0 point to make the 35th value

def iterative_fib(n)

  n1 = 0
  n2 = 1
  temp = n1 + n2

  n.times do 
    temp = n1
    n1 = n2
    n2 = temp + n1
  end
  return n1  
end

10.times do |n|
    result = iterative_fib(n)
    puts result
end

def recursive_fib(n)
  if n == 1
    return 1
  elsif n == 2
    1
  else
    recursive_fib(n-1) + recursive_fib(n-2)
  end
end

puts recursive_fib 9
  
#0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end 
    

    
  
    
  







# [0, 1, 2, 3, 5, 8, 13, 21, 34,]

#fibonacci = Fibonacci.new([[n1,n2,n3,n4,n5,n6,n7,n8]])
