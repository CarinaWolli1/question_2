class StudentAnswersController < ApplicationController
  def new
    @questions = Question.all
  end

  def create
    @questions = Question.all
    @questions.each do |question|
      answer_id = params[question.id.to_s.to_sym]
      StudentAnswer.create!(
        student_number: session[:student_number],
        answer_id: answer_id
      )
    end
  end
end
