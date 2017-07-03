class Comment < ApplicationRecord
  belongs_to :hotel, :counter_cache => 1
  belongs_to :user
end
