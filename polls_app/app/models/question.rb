class Question < ApplicationRecord
  belongs_to :poll

  has_many :answer_choices,
  class_name: AnswerChoice,
  primary_key: :id,
  foreign_key: :question_id,
  dependent: :destroy
end
