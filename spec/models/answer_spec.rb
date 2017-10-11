require 'rails_helper'

RSpec.describe Answer, type: :model do
  it "has a title" do 
    answer_one = Answer.create(title: "Hello", content: "Goodbye" )
    answer_one.title.to eq("Hello")
  end 
  it "has content" do 
    answer_two = Answer.create(title: "Mobey", content: "Jinx" )
    answer_two.content.to eq("Jinx")
  end 
end 
