require 'rspec'
require './lab2.rb'

RSpec.describe "Main" do

  it "#word_test_1" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('MarkCS')
    expect(check_word).to eq(256)
  end

  it "#word_test_2" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Fort')
    expect(check_word).to eq("troF")
  end

  it "#pokemon_test" do
  		allow_any_instance_of(Kernel).to receive(:gets).and_return(2, "Pikachu", "Yellow", "Squirtle", "Light blue")
  		expect(create_pokemons).to eq([{ "Pikachu" => "Yellow" }, { "Squirtle" => "Light blue" }])
  	end

end
