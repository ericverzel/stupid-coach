class QuestionsController < ApplicationController
    def ask
    end
    def answer
      if params[:question]
        @answer = params[:question]
        @coach_reply = @answer
            if @answer == 'I am going to work'
            @coach_reply = 'Great'
          elsif @answer.last.include?('?')
            @coach_reply = 'Silly question, get dressed and go to work!'
          else
            @coach_reply = 'I don’t care, get dressed and go to work!'
          end
      end
    end
  end