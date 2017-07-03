class Hotel < ActiveRecord::Base
belongs_to :user
has_many :comments, dependent: :destroy

scope :top5, -> {
    select("hotels.id, hotels.title, hotels.star_rating, hotels.breakfast,
     hotels.image, hotels.room_desc, hotels.price, hotels.address,count(comments) AS comments_count").
    joins(:comments).
    group("hotels.id, hotels.title, hotels.star_rating,
     hotels.breakfast, hotels.image, hotels.room_desc, hotels.price, hotels.address").
    order("comments_count DESC").
    limit(5)
}
#Hotel.top5
validates :title, presence: true, length: {minimum:2, maximum:30}
#VALID_BREAK_REGEX = /\A+yes|no/
#validates :breakfast, presence: true, format: {with:VALID_BREAK_REGEX}
validates :room_desc, presence: true
validates :price, presence: true
validates :address, presence: true
validates :image, presence: true
mount_uploader :image, ImageUploader
end
