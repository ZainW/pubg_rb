require "spec_helper"
require "yaml"

RSpec.describe PubgRb do
  before(:all) do
    CONFIG = OpenStruct.new YAML.load_file 'spec/secrets.yaml'
    @api_key= CONFIG["APIKEY"]
  end

  it "has a version number" do
    expect(PubgRb::VERSION).not_to be nil
  end

  it "raises an ArgumentError when no API key is passed" do
    expect{PubgRb::Api.new()}.to raise_error(ArgumentError, "Add an `api_key` from `pubgtracker.com`!")
  end

  #TODO validate API key somehow
  it "Initializes client successfully" do
    expect(PubgRb::Api.new(@api_key)).to be_a PubgRb::Api
  end
  it "returns a Pubg::Profile object with :platformid, :accountid, :avatar, :selectedregion, :defaultseason, :seasondisplay, :lastupdated, :playername, :pubgtrackerid, :stats, :matchhistory" do
    api = PubgRb::Api.new(@api_key)
    profile = api.get("needmorewood")
    expect(profile).to be_a PubgRb::Profile
    expect(profile.platformid).to be_a Integer
    expect(profile.accountid).to be_a String
    expect(profile.avatar).to be_a String
    expect(profile.selectedregion).to be_a String
    expect(profile.defaultseason).to be_a String
    expect(profile.seasondisplay).to be_a String
    expect(profile.lastupdated).to be_a DateTime
    expect(profile.playername).to be_a String
    expect(profile.pubgtrackerid).to be_a Integer
    expect(profile.stats).to be_a Array
    expect(profile.matchhistory).to be_a Array
  end
end
