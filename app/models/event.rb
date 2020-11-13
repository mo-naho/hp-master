class Event < ApplicationRecord
    validates :event_name,
        presence: {message:'を入力してください。'}
    validates :event_date,
        presence: {message:'を入力してください。'}
end
