def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
    data.each do |attributes_hash, values_hash|
      values_hash.each do |array_key, array_value|
        array_value.each do |name|
          if !pigeon_list.has_key?(name)
#if theres not a key w/ the varible name  
            pigeon_list[name] = {
              :color => [],
              :gender => [],
              :lives => []
            }
          end
          pigeon_list[name][attributes_hash] << array_key.to_s
        end
      end
    end
    pigeon_list
end
