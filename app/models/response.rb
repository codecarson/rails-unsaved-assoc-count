class Response < ActiveRecord::Base
  belongs_to :selected, class_name: 'Answer' #, inverse_of: :responses
  belongs_to :question #, inverse_of: :responses

  scope :correct, -> { where(correct: true) }

  def correct?
    result = question.present? && selected == question.correct_answer
    write_attribute(:correct, result)
    result
  end

  def selected=(value)
    super
    correct?
  end
end
