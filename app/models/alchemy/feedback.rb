module Alchemy
  class Feedback < ActiveRecord::Base
    scope :approved, -> { where(approved: true).order(created_at: :desc) }
  end
end