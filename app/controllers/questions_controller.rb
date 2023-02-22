class QuestionsController < ApplicationController

  def ask
  end

  def answer
    params
    @question = params[:question]
    if params[:question] == ' I am going to work'
      @result = 'Great!'
    elsif params[:question].end_with?('?')
      @result = 'Silly question, get dressed and go to work!'
    else
      @result = "I don't care, get dressed and go to work!"
    end
  end

end
