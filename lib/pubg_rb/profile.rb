module PubgRb
  class Profile
    def initialize(json)
      avatar = json['Avatar']
      playerName = json['PlayerName']
      lastUpdated = json['LastUpdated'] 
    end
  end
end