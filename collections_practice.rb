sort_array_asc(numbers)
sort_array = []
sort_array.collect do |numbers|
  sort_array << sort_array.sort
end
sort_array
end

sort_array_desc(numbers)
