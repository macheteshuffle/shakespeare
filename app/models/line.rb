class Line < ActiveRecord::Base
  validates_presence_of :speech_id
  validates_presence_of :line

  belongs_to :speech,
    inverse_of: :lines
end