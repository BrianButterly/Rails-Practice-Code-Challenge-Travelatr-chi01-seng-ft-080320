class Destination < ApplicationRecord
    has_many :posts

    def most_liked
        self.posts.max_by do |post|
            post.likes
        end
    end

    def avg_age
        ages = self.posts.map do |post|
            post.blogger.age
        end
        sum = ages.sum
        count = ages.count
        sum / count
    end
end





# The average age of all unique bloggers who have written about this destination.