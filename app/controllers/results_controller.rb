class ResultsController < ApplicationController
  def index
    Result.destroy_all
    points = 0
    StudentAnswer.all.each do |answer|
      points = 0
      StudentAnswer.all.each do |ans|
        if answer.student_number.eql? ans.student_number then
          @a = Answer.find(ans.answer_id)
          if @a.is_true then
                  points = points + 1
          end
        end
      end
      a = 0
      Result.all.each do |res|
        if answer.student_number.eql? res.student_number || answer.student_number = nil then
          a = 5
        end
      end
      if a != 5 then
      @result = Result.new(:student_number => answer.student_number, :points => points)
      @result.save
      end
    end

    @results = Result.all

    respond_to do |format|
      format.html
      format.csv { send_data @results.to_csv, filename: "answers-#{Date.today}.csv" }
    end
  end

end
