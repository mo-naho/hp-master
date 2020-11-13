class Topic < ApplicationRecord
    belongs_to :image

    validates :image_id,
        presence: {message:'を入力してください。'}
    validates :memo,
        presence: {message:'を入力してください。'}
end
