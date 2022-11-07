class Response < ApplicationRecord

  belongs_to :respondent,
  class_name: :User,
  primary_key: :id,
  foreign_key: :user_id

  belongs_to :answer_choice

end
