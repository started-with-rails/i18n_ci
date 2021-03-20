# frozen_string_literal: true

class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
  validates :description, presence: true, length: { minimum: 10 }
end
