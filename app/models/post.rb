class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination

    validates :content, numericality: {less_than: 100}
end
