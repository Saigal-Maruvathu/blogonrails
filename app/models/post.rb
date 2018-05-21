class Post < ApplicationRecord
  has_many :remarks, dependent: :destroy
  validates :title, presence: true
  validates :content, presence: true
end
