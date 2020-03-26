class Post < ApplicationRecord
    validates :title, presence: true,length: { maximum: 50 },uniqueness: true
    validates :name, presence: true
    belongs_to :user
    has_many :comments, dependent: :destroy
end
