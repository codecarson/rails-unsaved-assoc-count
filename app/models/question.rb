class Question < ActiveRecord::Base
  belongs_to :correct_answer, class_name: 'Answer' #, inverse_of: :question
  has_many :answers
  has_many :responses #, inverse_of: :question
  has_many :correct_responses, -> { where correct: true }, class_name: 'Response'
end
