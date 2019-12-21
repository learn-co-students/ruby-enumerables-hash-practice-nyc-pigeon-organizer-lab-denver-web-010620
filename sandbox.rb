pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


def pigeon_names(data)
#this method accepts the nds and returns a hash of unique pigeon names
#ex. "pigeon name" => {}

  pigeon_names = {}
  new_array = []
  attributes = []
  
#this section of code pulls the list of names, removes the duplicates,
#and populates the names in the top level hash
# ex: pigeon_name1 => {:color => [], :gender=> [], :lives => [], pigeon_name2...}

  data.each do |top_key,top_value| #block
    attributes << top_key
    top_value.each do |key2, value2| #nested block
      value2.each do |value3|
        new_array << value3
    end
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
      p "name= #{name}, value = #{value} k = #{k}, v = #{v}"
      data[k].each do |subatt, name_list|
        p "subatt = #{subatt}, name_list= #{name_list}"
        if name_list.any?{|n| n==name}
          v << subatt.to_s
        end #if
      end #data[k] block
    end #value.each block
  end #pigeon_names.each block
  pp pigeon_names      
 # end
  
  return pigeon_names
end



def nyc_pigeon_organizer(data)
  pigeon_list = pigeon_names(data)
end



nyc_pigeon_organizer(pigeon_data)