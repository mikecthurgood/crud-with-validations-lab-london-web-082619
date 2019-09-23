class Song < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: { 
        scope: %i[release_year artist_name], 
        message: "An artist cannot release the same song name in the same year"
    }
    validates :released, inclusion: { in: [true, false] }
    validates :artist_name, presence: true
    validates :genre, presence: true

    with_options if: :released? do |song|
        song.validates :release_year, presence: true
        song.validates :release_year, numericality: {
          less_than_or_equal_to: Date.today.year
        }
      end

    def released?
        released
    end 
end
