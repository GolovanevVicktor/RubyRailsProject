class Hotel < ActiveRecord::Base
belongs_to :user
default_scope -> {order('created_at DESC')}
validates :title, presence: true, length: {minimum:2, maximum:30}
validates :star_rating, presence: true, format: {with: /\A[1-5]/}
VALID_BREAK_REGEX = /\A+yes|no/
validates :breakfast, presence: true, format: {with:VALID_BREAK_REGEX}
validates :room_desc, presence: true
validates :price, presence: true
validates :address, presence: true
validates :user_id, presence: true
end
