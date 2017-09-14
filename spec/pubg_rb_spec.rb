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
end
