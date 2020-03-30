class Artwork < ApplicationRecord
    validates :title, :artist_id, :image_url, presence: true
    validates :title, uniqueness: { scope: :artist_id }
    validates :image_url, uniqueness: true

    belongs_to :artist,
        class_name: :User

    has_many :artwork_shares

    has_many :shared_viewers,
        through: :artwork_shares,
        source: :viewer
end