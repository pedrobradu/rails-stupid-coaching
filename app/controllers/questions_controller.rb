class QuestionsController < ApplicationController
    def ask
    end

    def answer
        @ask = params[:question]
        @answer = coach_answer(@ask)
    end

    def coach_answer(x)
        if x == "I am going to work" 
            "Great!"
        elsif x.include?('?')
            "Silly question, get dressed and go to work!"
        else
            "I don't care, get dressed and go to work!" 
        end
    end
end
