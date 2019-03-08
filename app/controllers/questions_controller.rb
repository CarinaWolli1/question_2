class QuestionsController < ApplicationController
  def new
  end

  def create
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
  end
end
