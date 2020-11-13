class Image < ApplicationRecord

  mount_uploader :tag, ImageUploader

  has_many :category
  has_many :topic

  validates :tag, presence: {message:'を入力してください。'}

end
