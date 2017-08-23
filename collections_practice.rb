# your code goes here
require 'pry'

def begins_with_r(array)
  array.all?{|word| word[0] == "r" ? true : false}
end

def contain_a(array)
  array.select{ |word| word.include?("a") }
end

def first_wa(array)
  array.find { |word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if { |word| word.class != String}
end

def count_elements(array)
  array.each_with_object(Hash.new(0)) { |g, h| h[g[:name]] += 1 }.
      map { |name, count| { :name=>name, :count=>count } }
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(array)
  array.collect do |hash|
    hash.each do |k,v|
      if v == "cool"
         return [hash]
      end
    end
  end
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
