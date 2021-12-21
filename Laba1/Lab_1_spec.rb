require 'rspec'
require './lab1.rb'

RSpec.describe "Main" do

  it "#greeting_test_1" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Mark', 'Sorokin', 17)
    expect(greeting).to eq("Hi, Mark Sorokin. You are less then 18, but starting programming is never early")
  end

  it "#greeting_test_2" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Mark', 'Sorokin', 20)
    expect(greeting).to eq("Hello, Mark Sorokin. It's time to get busy")
  end

  it "#foobar_test_1" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(7, 5)
    expect(foobar).to eq(12)
  end

  it "#foobar_test_1" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(20, 9)
    expect(foobar).to eq(9)
  end

end
