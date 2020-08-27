require 'pry'

def nyc_pigeon_organizer(data)
  #Write your code here!
  data.each_with_object({}) do |(key, value), pigeon_list|
    #binding.pry
    value.each do |inner_key, names|
      names.each do |name|
        #binding.pry
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        if !pigeon_list[name][key]
          !pigeon_list[name][key] = []
        end
        pigeon_list[name][key].push(inner_key.to_s)
      end
    end
  end   
  #binding.pry 
end
   # array_of_names = []
  # data[:gender][:male].each do |name|
  #   array_of_names << name
  # end
  # data[:gender][:female].each do |name|
  #   array_of_names << name
  # end
    # data.each_with_object({}) do |key, value, pigeon_list|
    #   array_of_names.each do |name|
    #     if !pigeon_list[name]
    #       pigeon_list[name] = {}
    #     end
    #     if !pigeon_list[name][key]
    #       pigeon_list[name][key] = []
    #     end
    #     data[:color].each do ||
    #       if color.include?(name)
    #         color = color.to_s
    #         pigeon_list[name][key] << color
    #       end
    #     end
    #     data[:gender].each do |gender|
    #       if gender
    #   end
    # end

