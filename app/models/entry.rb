# frozen_string_literal: true

class Entry < ApplicationRecord
  validates :title, :body, presence: true
end
