def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |characteristic, values|
    values.each do |value, pigeons|
      pigeons.each do |pigeon_name|
        if pigeon_list[pigeon_name] == nil
          pigeon_list[pigeon_name] = {}
        end

        if pigeon_list[pigeon_name][characteristic] == nil
          pigeon_list[pigeon_name][characteristic] = []
        end

        pigeon_list[pigeon_name][characteristic] << value.to_s
      end
    end
  end

  pigeon_list
end
