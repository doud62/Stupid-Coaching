class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question
      if @question.start_with?("I am going to work")
        @result = "Great!"
      elsif @question.include?("?")
        @result = "Silly question, get dressed and go to work!"
      else
        @result = "I don't care, get dressed and go to work!"
      end
    end
  end
end
