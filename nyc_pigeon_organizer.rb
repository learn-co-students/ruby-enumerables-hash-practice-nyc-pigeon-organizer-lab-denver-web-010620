def nyc_pigeon_organizer(data)
  # write your code here!
  new_data = {}
  data.each {|attribute, descriptor|
    descriptor.each {|sub_attribute, namelist| 
      namelist.each {|name| 
        if !new_data[name]
          new_data[name] = {"#{attribute}": ["#{sub_attribute}"]}
        elsif !new_data[name]["#{attribute}".to_sym]
          new_data[name]["#{attribute}".to_sym] = ["#{sub_attribute}"]
        else
          new_data[name]["#{attribute}".to_sym] << "#{sub_attribute}"
        end
      }
    }
  }
  new_data
end
