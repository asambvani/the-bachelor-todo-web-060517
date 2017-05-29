def get_first_name_of_season_winner(data, season)
  data[season].each do |object|
    if object["status"] == "Winner"
      return object["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_key, season_value|
    season_value.each do |object|
      if object["occupation"] == occupation
        return object["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_key, season_value|
    season_value.each do |object|
      if object["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season_key, season_value|
    season_value.each do |object|
      if object["hometown"] == hometown
        return object["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  count = 0
  data[season].each do |object|
    age_array << object["age"].to_i
  end
  age_array.each do |item|
    count += item
  end
  puts "Count: #{count} Size: #{age_array.size}"
  puts age_array

  return (count.to_f / age_array.length.to_f).round(0)
end
