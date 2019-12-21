def nyc_pigeon_organizer(data)
  pigeon_names = {}
  new_array = []

#this section of code pulls the list of names, removes the duplicates,
#and populates the names in the top level hash
# ex: pigeon_name1 => {:color => [], :gender=> [], :lives => [], pigeon_name2...}

  data.each do |top_key,top_value| #block
    top_value.each do |key2, value2| #nested block
      value2.each {|value3| new_array << value3}
    end #nested block
  end # block
  new_array.uniq!
  new_array.map do |name|
    pigeon_names[name] = {:color => [], :gender => [], :lives => []}
  end #map block



#this section of code pulls the attributes out and assigns them
#to the correct pigeon.

  pigeon_names.each do |name,value|
    value.each do |k,v|
      data[k].each do |subatt, name_list|
        if name_list.any?{|n| n==name}
          v << subatt.to_s
        end #if
      end #data[k] block
    end #value.each block
  end #pigeon_names.each block

  return pigeon_names
end
