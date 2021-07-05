require 'pry'
def nyc_pigeon_organizer(data)
 
 result = {}
 data[:gender].each{
   |key,array| 
   array.each{ |name|
    result[name] = {
      :color => [],
      :gender => [key.to_s],
      :lives => []
    }
   }
   }
data[:color].each { |color,values|
values.each { |i|
result[i][:color] << color.to_s
 }
}
data[:lives].each { |lives,places|
places.each { |i|
result[i][:lives] << lives.to_s
}
}
return result
end
 
 
 

#color_values = a.to_s
#structure = {
  #:color => color_values,
  #:gender => a.to_s,
 # :lives => a.to_s
#}
#if b.include?(i){ v.invert or result[i] = structure
#}?