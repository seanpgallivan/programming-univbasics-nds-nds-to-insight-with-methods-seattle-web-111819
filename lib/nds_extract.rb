require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  i = 0
  while i < nds.count do
    result[nds[i][:name]] = gross_for_director(nds[i])
    i += 1
  end
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  i = 0
  tot = 0
  while i < director_data.count do
    tot += director_data[:movies][i][:worldwide_gross]
    i += 1
  end
  return tot
end
pp directors_database