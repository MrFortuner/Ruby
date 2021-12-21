require 'rspec'
require './task1.rb'

RSpec.describe "task1" do
  before {File.write(ACTORS_LIST_PATH, "Charlie Chaplin\nBruce Uillis\nRobert Downey\nRupert Grin")}
  
  it "#index"do
    expect{index}.to output("Charlie Chaplin\nBruce Uillis\nRobert Downey\nRupert Grin\n").to_stdout
  end

  it "#where" do
    expect(where("Bruce Uillis")).to eq(1)
  end

  it "#update" do
    update(0, "Mark Sorokin")
    expect{index}.to output("Mark Sorokin\nBruce Uillis\nRobert Downey\nRupert Grin\n").to_stdout
  end

  it "#delete" do
    delete(0)
    expect{index}.to output("Bruce Uillis\nRobert Downey\nRupert Grin\n").to_stdout
  end

  it "#find" do
    expect{find(2)}.to output("Robert Downey\n").to_stdout
  end
end
