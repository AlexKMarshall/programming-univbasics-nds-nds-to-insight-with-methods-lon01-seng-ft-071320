$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movies = director_data[:movies]
  total = 0
  movies.count.times do |index|
    total += movies[index][:worldwide_gross]
  end
  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nds.count.times do |index|
    director_data = nds[index]
    gross = gross_for_director director_data
    director_name = director_data[:name]
    result[director_name] = gross
  end
  result
end
