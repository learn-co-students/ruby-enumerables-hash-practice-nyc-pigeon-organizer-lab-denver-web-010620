pigeon_list = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
  "Peter Jr." => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Library"]
  },
  "Lucky" => {
    :color => ["purple"],
    :gender => ["male"],
    :lives => ["Central Park"]
  },
  "Ms. K" => {
    :color => ["grey", "white"],
    :gender => ["female"],
    :lives => ["Central Park"]
  },
  "Queenie" => {
    :color => ["white", "brown"],
    :gender => ["female"],
    :lives => ["Subway"]
  },
  "Andrew" => {
    :color => ["white"],
    :gender => ["male"],
    :lives => ["City Hall"]
  },
  "Alex" => {
    :color => ["white", "brown"],
    :gender => ["male"],
    :lives => ["Central Park"]
  }
}


def nyc_pigeon_organizer (data)
  new_hash = {}
  data.each do |key, value|
  value.each do |new_value, names|
  names.each do |name|
    
    if !new_hash[name]
      new_hash[name] = {}
    end
    
    if !new_hash[name][key]
      new_hash[name][key] = [] 
    end 
    
  new_hash[name][key] << new_value.to_s
end 
end 
end 
 p new_hash
  end

