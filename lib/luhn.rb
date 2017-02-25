module Luhn

def self.is_valid?(number_checked)
  
  sum = 0 
  card_number = number_checked.to_s.split("").reverse.map{|char_digit| char_digit.to_i}
  #erik = [4 1 9 4 5 6 0 3 8 5 0 0 8 5 0 4]
  doubled_digits = card_number.each_with_index.map {|digit,index| index.odd? ? digit * 2 : digit}
# [8  1 18  4 10  6 0 3 16  5 0 0 16  5 0 4]
  subtracted_digits = doubled_digits.map {|doubled_digit| doubled_digit >= 10 ? doubled_digit -9 : doubled_digit}
  #we've doubled and subtracted numbers >= 10
  subtracted_digits.each {|digit| sum += digit}


  if (sum % 10) == 0 #the sum must be return zero
    return true
  else
    return false
  end
end
end


#make an array, separate the numbers Array.map!(&:to_s)
#=> ["4", "1", "9", "4", "5", "6", "0", "3", "8", "5", "0", "0", "8", "5", "0", "4"]
#Array.at(7) .at can be used to identify specific elements in an array
#Array.reverse reads things from right to left
#label odd places (1,3,5,7,9,11,13,15) a.values_at(* a.each_index.select {|i| i.odd?})
#double the value of the odd places
#label even places () Array.values_at(* Array.each_index.select {|i| i.even?})
