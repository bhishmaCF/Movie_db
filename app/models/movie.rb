class Movie < ActiveRecord::Base
	has_many :genres
	has_one :detail
	has_many :casts
	has_many :actors, :through => :casts
	validates :rating, inclusion: 0..10
end
