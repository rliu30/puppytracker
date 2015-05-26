class Puppy < ActiveRecord::Base

	validates :name, presence: true
	validates :years, numericality: { greater_than_or_equal_to: 0, less_than: 10 }
end
