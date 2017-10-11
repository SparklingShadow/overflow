require 'rails_helper'

RSpec.describe Question, type: :model do
  it "has a title" do 
    question_one = Question.create(title: "Hello", content: "Goodbye" )
    question_one.title.to eq("Hello")
  end
  it "has content" do 
    question_two = Question.create(title: "Mobey", content: "Jinx" )
    question_two.content.to eq("Jinx")
  end 
end 
