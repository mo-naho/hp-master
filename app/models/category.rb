class Category < ApplicationRecord
    has_many :info
    belongs_to :image

    validates :name,
        presence: {message:'を入力してください。'},
        uniqueness: {message:'同じものが存在しています。'},
        length: {maximum: 15}
    
    validates :image_id,
        presence: {message:'を入力してください。'}

end
