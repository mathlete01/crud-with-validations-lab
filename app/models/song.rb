class Song < ApplicationRecord
    validates :title, presence: true
    validates :released, inclusion: { in: [ true, false ]}
    validates :release_year, only_integer: true, numericality: { less_than_or_equal_to: -> {Date.current.year } }
    validates :artist_name, presence: true
    validates :genre, presence: true


end
