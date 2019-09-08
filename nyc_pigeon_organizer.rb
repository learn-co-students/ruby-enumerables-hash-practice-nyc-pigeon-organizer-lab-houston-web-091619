def nyc_pigeon_organizer(data)
  new_data = {}
  data.keys.each do |attribute|
    data[attribute].keys.each do |trait|
      data[attribute][trait].each do |name|
        if new_data.include?(name)
          if new_data[name].include?(attribute)
            new_data[name][attribute] << trait.to_s
          else
            new_data[name][attribute] = [trait.to_s]
          end
        else
          new_data[name] = {attribute => [trait.to_s]}
        end
      end
    end
  end
  new_data
end


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

p nyc_pigeon_organizer(pigeon_data)