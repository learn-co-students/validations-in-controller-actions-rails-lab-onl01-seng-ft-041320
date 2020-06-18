class Post < ActiveRecord::Base
    include ActiveRecord::Validations

    validates :title, presence: true
    validates  :category, inclusion: { in: %w(Fiction Non-Fiction)}
    validates :content, length: { minimum: 100 }
end
