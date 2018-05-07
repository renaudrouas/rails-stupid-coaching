class QuestionsController < ApplicationController
  def ask

  end

  def answer
@answer = params[:question]

if @answer == "I am going to work"
@answer = "Great !"
  elsif @answer[-1] == "?"
  @answer =  "Silly question, get dressed and go to work!"
    else
    @answer = "I don't care, get dressed and go to work!"
end
  end
    end


# The answer.html.erb will display the question you ask your coach as
# well as his answer. The controller will need to read the question from params
# and compute an instance variable @answer for the view to display

# localhost:3000/answer?question=hello
# localhost:3000/answer?question=what+time+is+it%3F
