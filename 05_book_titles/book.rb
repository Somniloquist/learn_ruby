class Book
    attr_accessor :title

    def title
        exceptions = ["and", "the", "in", "of", "a", "an"]
        book_title = []
        title = @title.split()

        title.each do |word|
            exceptions.include?(word) ? book_title << word : book_title << word.capitalize
        end

        book_title[0] = book_title.first.capitalize

        book_title.join(" ")
    end
end