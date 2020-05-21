# 1. ascending order
def sort_array_asc(array)
  array.sort
end
sort_array_asc([25, 7, 1]) #[1,7,25]

 # 2. descending order
def sort_array_desc(array)
  array.sort do | left, right|
    right <=> left
  end
end
sort_array_desc([25, 7, 14]) #[25, 14, 7]

# 3. array in ascending order sorted by number of chars in string.
def sort_array_char_count(array)
  array.sort do |left, right|
    left.length <=> right.length
  end
end
sort_array_char_count(["dogs", "cat", "Horses"]) #["cat", "dogs", "Horses"]

# 4. swap the second and third elements.
def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end
swap_elements(["blake", "ashley", "scott"]) #["blake", "scott", "ashley"]

# 5. reverse the order of an array of integers.
def reverse_array(array)
  array.reverse
end
reverse_array(["blake", "ashley", "scott"]) #["scott", "ashley", "blake"]

# 6. change the third character of each element to a dollar sign.
def kesha_maker(array)
  array.each do |item|
    item[2] = "$"
  end
end
kesha_maker(["blake", "ashley", "scott"]) #["bl$ke", "as$ley", "sc$tt"]

# 7. find all words that begin with "a" in the array.
def find_a(array)
  array.find_all do |word|
    word[0] == "a"
  end
end
find_a(["apple", "orange", "pear", "avis", "arlo", "ascot" ]) #["apple", "avis", "arlo", "ascot"]
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
sum_array([11,4,7,8,9,100,134]) #273

# 9. add an "s" to each word in the array except for the second element.
def add_s(array)
  array.collect do |word|
    if array[1] == word
      word
    else
      word + "s"
    end
  end
end
add_s(["hand","feet", "knee", "table"]) #=>["hands","feet", "knees", "tables"]
