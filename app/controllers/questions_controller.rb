require 'httparty'
class QuestionsController < ApplicationController
skip_before_action :verify_authenticity_token, :only => :create
  
  def index
    @questions = Question.all
    puts "***********"
    response =   HTTParty.get('https://api.github.com/zen')
    puts response.body
    puts "************"
  end

  def show  
    id = params[:id]
    @question = Question.find(id)
    @answers = Answer.all
  end 
  
  def destroy 
    @question = Movie.delete(params[:id])
    redirect_to "/questions"
  end 

  def create 
    Question.create(title: params[:title], content: params[:content])
    redirect_to "/questions"
  end

  def update
    id = params[:id]
    @question = Question.find(id)
    @question.title = params[:title]
    @question.content = params[:content]
    @question.save
    redirect_to "/questions"
  end
end
