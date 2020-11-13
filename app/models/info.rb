class Info < ApplicationRecord
    belongs_to :category

    validates :main,
        presence: {message:'を入力してください。'}
    validates :my_date,
        presence: {message:'を入力してください。'}
    validates :category_id,
        presence: {message:'を入力してください。'}
end
