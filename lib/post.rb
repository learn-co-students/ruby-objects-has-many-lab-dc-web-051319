require_relative 'author.rb'

class Post

    @@posts = []
    @@all = []

    attr_reader :title
    attr_accessor :author

    def initialize(title)
        @title = title
        @@posts << self
        @@all << self
    end

    def self.posts
        @@posts
    end

    def self.all
        @@all
    end

    def author
        @author
    end

    def author_name
        if self.author == nil
            return nil
        else
            return self.author.name
        end
    end
end