class Meaning < ApplicationRecord
  belongs_to :user
  validates :english_word, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 1, maximum: 20}
  validates :translation, presence: true, length: {minimum: 1, maximum: 20}
end
