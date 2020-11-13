class Contact < ApplicationRecord
    validates :name,
        presence: {message:'を入力してください。'}
    validates :mail,
        presence: {message:'を入力してください。'}
    validates :main, presence: true, format: { with: /\p{Hiragana}/, \
        message: '(お問い合わせ内容)には日本語を含めてください。(Text must contain hiragana.)' }
end
