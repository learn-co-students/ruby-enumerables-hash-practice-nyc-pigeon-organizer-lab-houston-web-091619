def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key, value| 
    value.each do |describe, array| 
      array.each do |name| 
        if pigeon_list.has_key?(name)
          if pigeon_list[name].has_key?(key)
            pigeon_list[name][key] << describe.to_s
          else
            pigeon_list[name][key] = [describe.to_s]
          end
        else
          pigeon_list[name] = {key => [describe.to_s]} 
        end
      end
    end
  end
  pigeon_list
end
