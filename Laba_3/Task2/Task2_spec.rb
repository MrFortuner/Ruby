require 'rspec'
require './task2.rb'

RSpec.describe "task2" do
  before(:each) do
    File.write(OUTPUT_FILE_PATH, "")
  end

  it "#witout negative number" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(20, 19, 19, 23, 21, 17, 22, 18, 30, 33, 25)
    expect{read_students}.to output("Enter age of student\nEnter age of student\nEnter age of student\nEnter age of student\nEnter age of student\nEnter age of student\nEnter age of student\nEnter age of student\nEnter age of student\nEnter age of student\nEnter age of student\nSorokin Mark 20\nSonya Kuznetsova 19\nMargarita Doskalchuk 19\nDmitry Avdonkin 23\nDanil Kharitonov 21\nElya Chiganova 17\nDasha Romanova 22\nStas Rozinkin 18\nDaniil Bgavin 30\nLev Terentyev 33\nAnatoly Mashkov 25\n").to_stdout
  end

  it "#with negative number" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(20, 23, -1)
    expect{read_students}.to output("Enter age of student\nEnter age of student\nEnter age of student\nYou entered -1 (exit)\nSorokin Mark 20\nDmitry Avdonkin 23\n").to_stdout
  end

  it "#straightaway negative number" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(-1)
    expect{read_students}.to output("Enter age of student\nYou entered -1 (exit)\n").to_stdout
  end
end
