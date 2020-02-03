class Author < ApplicationRecord
    has_many :books, dependent: :destroy #dependent destroy  ni, penting juga , just in case kita nak delete author
end
