require "pry"

def get_first_name_of_season_winner(data, season)
  winner = ""
  winner_array = []
  data.each do |data_season, contestants|
    if season == data_season
    contestants.each do |attribute, value|
      attribute.each do
          if attribute["status"] == "Winner"
            winner = attribute["name"]
            winner_array = winner.split(" ")
          end
        end
      end
    end
  end
winner_array[0]
end

def get_contestant_name(data, occupation)
  data.each do |data_season, contestants|
    contestants.each do |attribute, value|
      if attribute["occupation"] == occupation
        return attribute["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
x = 0
  data.each do |data_season, contestants|
    contestants.each do |attribute, value|
      if attribute["hometown"] == hometown
        x += 1
      end
    end
  end
x
end

def get_occupation(data, hometown)
occupations = []
  data.each do |data_season, contestants|
    contestants.each do |attribute, value|
      if attribute["hometown"] == hometown
        occupations << attribute["occupation"]
      end
    end
  end
occupations[0]
end

def get_average_age_for_season(data, season)
ages = []
integer_ages = []
total_age = 0
      data.each do |data_season, contestants|
        if data_season == season
          contestants.each do |attribute, value|
            ages << attribute["age"]
          end
        end
      end
    x = 0
    until x == ages.length
      integer_ages << ages[x].to_f
      x += 1
    end
    y = 0
    until y == integer_ages.length
      total_age = total_age + integer_ages[y]
      y += 1
    end
(total_age / integer_ages.length).round
end
