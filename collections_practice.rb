# 1. ascending order
def sort_array_asc(array)
  array.sort  #sort puts nums in order. ascending order = in order.
end
sort_array_asc([25, 7, 1]) #=>[1,7,25] #call method at the end

 # 2. descending order
def sort_array_desc(array)
  array.sort do | left, right|
    right <=> left #right to left is descending order.
  end
end
sort_array_desc([25, 7, 14]) #=>[25, 14, 7] #call method at the end.

# 3. array in ascending order sorted by number of chars in string.
def sort_array_char_count(array)
  array.sort do |left, right|  #sort is left to right, ascending order.
    left.length <=> right.length  #cat.length  = 3, dogs.length = 4, horses.length = 5.
  end
end
sort_array_char_count(["dogs", "cat", "Horses"]) #=>["cat", "dogs", "Horses"] #call method at the end.

# 4. swap the second and third elements.
def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end
swap_elements(["blake", "ashley", "scott"]) #=>["blake", "scott", "ashley"] #call method at the end.

# 5. reverse the order of an array of integers.
def reverse_array(array)
  array.reverse
end
reverse_array(["blake", "ashley", "scott"]) #=>["scott", "ashley", "blake"]

# 6. change the third character of each element to a dollar sign.
def kesha_maker(array)
  array.each do |item| #each in directions.
    item[2] = "$"
  end
end
kesha_maker(["blake", "ashley", "scott"]) #=>["bl$ke", "as$ley", "sc$tt"]

# 7. find all words that begin with "a" in the array.
def find_a(array)
  array.find_all do |word| #find_all method.
    word[0] == "a"
  end
end
find_a(["apple", "orange", "pear", "avis", "arlo", "ascot" ]) #=>["apple", "avis", "arlo", "ascot"]
# can also use the select method
# array.select do |word|
# word[0] == "a"
# end

# 8. sum all numbers.
def sum_array(array)
  sum = 0
  array.each do |num|
    sum+=num
  end
  sum
end
sum_array([11,4,7,8,9,100,134]) #=>273

# 9. add an "s" to each word in the array except for the second element.
def add_s(array)
  array.collect do |word| #use collect to create a new array with modified elements.
    if array[1] == word
      word
    else
      word + "s"
    end
  end
end
add_s(["hand","feet", "knee", "table"]) #=>["hands","feet", "knees", "tables"]
