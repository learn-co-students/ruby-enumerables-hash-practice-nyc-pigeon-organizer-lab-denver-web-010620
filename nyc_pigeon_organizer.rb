require 'pry'

def nyc_pigeon_organizer(data)
    result = {}
    data.each do |key, value|
      #binding.pry 
        value.each do |key_1, value_1|
          #binding.pry 
          value_1.each do |name|

             if result[name] == nil
                result[name] = {}
             end

             new_attribute = key_1.to_s
            
             if result[name][key] == nil
                new_attribute = key_1.to_s
                result[name][key] = [new_attribute]
             else
                result[name][key] << new_attribute
             end

            end

        end
    end
    result
end


