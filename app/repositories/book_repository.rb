module BookRepository

  BOOKS = [].freeze

  module_function

  def insert(book)
    BOOKS << { uuid: SecureRandom.uuid }.merge!(book)
  end

  def list
    BOOKS.deep_dup
  end

end
