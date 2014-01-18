class Speaker < ActiveRecord::Base
  validates_presence_of :speech_id
  validates_presence_of :name
  validates_uniqueness_of :name

  belongs_to :speech,
    inverse_of: :speakers
  has_many :lines,
    through: :speech

end
