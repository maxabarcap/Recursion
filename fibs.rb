class Fibonacci
  def fibs(n)
   if n == 1
     return [0]
   elsif n == 2
     return [0,1]
   else
     array = fibs(n-1)
     array << array[-2] + array[-1]
   end
  end
end