  def get_first_name_of_season_winner(data, season)
  data.each do |each_season, info| 
    if each_season.to_s == season
     info.each do |element|
       if element["status"] == "Winner"
        return element["name"].split(" ")[0]
      end
    end
   end 
  end
end


def get_contestant_name(data, occupation)
  data.each do |each_season, info| 
     info.each do |element|
       if element["occupation"] == occupation
        return element["name"]
    end
   end 
  end
end


def count_contestants_by_hometown(data, hometown)
  contestants = []
   data.each do |each_season, info| 
     info.each do |element|
       if element["hometown"] == hometown
        contestants << element["name"]
       end
     end 
   end
   return contestants.length
end

def get_occupation(data, hometown)
  data.each do |each_season, info| 
     info.each do |element|
       if element["hometown"] == hometown
        return element["occupation"]
       end
     end 
   end
end

def get_average_age_for_season(data, season)
  age = []
  data.each do |each_season, info| 
    if each_season.to_s == season
     info.each do |element|
      age << element["age"]
    end
   end 
  end
   
  average_age = 0
  age.collect do |num|
    average_age += num.to_f
  end
  return (average_age / age.length).round
end
