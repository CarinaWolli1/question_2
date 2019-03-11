require 'csv'

class Result < ApplicationRecord
  def self.to_csv
  attributes = %w{student_number points}

  CSV.generate(headers: true) do |csv|
    csv << attributes

    all.each do |a|
      csv << attributes.map{ |attr| a.send(attr) }
    end
  end
end
end
