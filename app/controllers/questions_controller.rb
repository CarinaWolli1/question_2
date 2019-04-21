class QuestionsController < ApplicationController
  def delete
  StudentAnswer.destroy_all
  Answer.destroy_all
  Question.destroy_all


  redirect_to new_question_path
  end

  def new
  end

  def create
    #max amout of questions is 5

    @question = Question.create!(
      text: params[:text]
    )
    @question.answers.create!(
      text: params[:answer_true],
      is_true: true
    )
    @question.answers.create!(
      text: params[:answer_b],
      is_true: false
    )
    @question.answers.create!(
      text: params[:answer_c],
      is_true: false
    )
    @question.answers.create!(
      text: params[:answer_d],
      is_true: false
    )
    @question.answers.create!(
      text: params[:answer_e],
      is_true: false
    )

    redirect_to new_question_path
  end
end
