sort_array_asc(nums)
sort_array = []
sort_array.collect do |nums|
  sort_array << sort_array.sort
end
sort_array
end
