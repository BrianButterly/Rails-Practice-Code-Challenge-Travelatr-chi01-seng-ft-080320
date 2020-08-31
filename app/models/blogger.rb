
class Blogger < ApplicationRecord
    has_many :posts
    validates :name, uniqueness: true
    validates :age, numericality: {greater_than: 0}
    validates :bio, length: {minimum: 30}

    def total_likes
        self.posts.map do |post|
            post.likes
        end
    end

    def most_liked
        self.posts.max_by do |post|
            post.likes
        end
    end
end

# Users should be able to create a new blogger
# Bloggers should have unique names and ages above 0, and their bio should be over 30 characters long.