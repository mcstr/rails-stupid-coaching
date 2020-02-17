class QuestionsController < ApplicationController

    def answer
      @question = params[:question]
      if params[:question].blank?
        @answer = "Stupid asshole, ask again, please"
      elsif @question == 'I am going to work'
        @answer = 'Great!'
      elsif @question[-1] == '?'
        @answer = 'Silly question, get dress and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
end
