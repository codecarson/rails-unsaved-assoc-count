class Answer < ActiveRecord::Base
  has_many :questions #, inverse_of: :answers
  has_many :responses #, inverse_of: :selected
end
