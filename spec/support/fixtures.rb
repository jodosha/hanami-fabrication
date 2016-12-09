require "hanami/model"

class Book < Hanami::Entity
  attributes do
    attribute :id,    Types::Int
    attribute :title, Types::String
  end
end

class BookRepository < Hanami::Repository
  def initialize
  end

  def create(data)
    Book.new(data.merge(id: 1))
  end
end

Fabricator(:book) do
  title "Hanami"
end
