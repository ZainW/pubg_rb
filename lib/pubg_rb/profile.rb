module PubgRb
  class Profile
    attr_reader :platformid, :accountid, :avatar, :selectedregion, :defaultseason, :seasondisplay, :lastupdated, :playername, :pubgtrackerid, :stats, :matchhistory
    def initialize(opts={})
      opts.each { |k,v| instance_variable_set("@#{k.downcase}", v) }
      instance_variable_set("@lastupdated", DateTime.parse(self.lastupdated[0..18]))
    end
  end
end