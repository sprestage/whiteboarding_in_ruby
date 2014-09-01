#!/usr/bin/env ruby
#
###
# The question asked here is:
#
#   Starting with two arrays, find all values that are unique to the first
#    array.
#
#   eg.  [1,2,3,4,1], [2,8,3]  would return [1,4]
#
#   All values in the resulting array should be unique, so a duplicated
#    value would be dropped.
#
#   Additional rules:
#     1. Raise an exception if either starting array has more than 20 elements.
#     2. Return an empty array if the first array is empty.
#     3. Return the first array if the second array is empty.
#
###

def find_unique_to_first_array_starting_with_first(first_array, second_array)
  my_hash = Hash.new(0)
  unique_array = []

  if (first_array.size > 20) || (second_array.size > 20)
    raise StandardError, "Your array is too big.  Try again with arrays with no more than 20 elements."
  end

  first_array.each do |key|
    my_hash[key] = 1
  end

  second_array.each do |key|
    my_hash[key] = 0 if my_hash.has_key?(key)
  end

  my_hash.each do | key, value |
    unique_array << key if value == 1
  end

  return unique_array
end

def find_unique_to_first_array_starting_with_second(first_array, second_array)
  my_hash = Hash.new(0)
  unique_array = []

  if (first_array.size > 20) || (second_array.size > 20)
    raise StandardError, "Your array is too big.  Try again with arrays with no more than 20 elements."
  end

  second_array.each do |key|
    my_hash[key] = 1
  end

  first_array.each do |key|
    unique_array << key unless my_hash.has_key?(key)
  end

  return unique_array.uniq
end

