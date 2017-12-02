require 'pry'

def begins_with_r(array)
  array.all? do |i|
    i.start_with?("r")
  end
end

def contain_a(array)
  output=[]
  array.each do |i|
    if i.include?("a")
      output << i
    end
  end
  output
end

def first_wa(array)
  array.find do |i|
    if i.is_a?(String)
    i.start_with?("wa")
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |i|
    !i.is_a?(String)
  end
end

def count_elements(array)
  output=[]
  array.each do |name_hash|
    name_hash.each do |name_symbol,name|
      if output.size == 0
        output << {name: name, count: 0}
      end
      if output[0][:name] != name
          output << {name: name, count: 1}
      end
      if output[0][:name] == name
        output[0][:count] +=1
      end
    end
  end
  output
end

def merge_data(arr1,arr2)
  output=[]

  arr1.each_with_index do |arr1_name_hash,i|
    # binding.pry
    output[i] = arr1_name_hash
    arr2.each_with_index do |arr2_name_hash,j|
      arr2_name_hash.each do |name,details_hash|
        details_hash.each do |key,value|
        output[i] << key =>value
      end
    end
  end
  output
end



def find_cool(array)
  output=[]
  array.each_with_index do |key,i|
    key.each do |symbols, values|
      if values == "cool"
        output << array[i]
      end
    end
  end
  output
end

def organize_schools(school_hash)
  new_hash = {}

  school_hash.each do |school_name,location_hash|
    location_hash.each do |location_symbol,city|
      if !new_hash.include?(city)
        new_hash[city] = []
      end
      new_hash[city] << school_name
    end
  end
  new_hash
end
