# Person has a name and a card number as a string, if applicable
class Person
  def initialize(name, card_number = 'none')
  end
end

class Book
  # positional arguments are: title, author, type (such as hardcover or paperback)
  # and isbn code
  def initialize(
    *positional,
    title: positional[0], author: positional[1],
    type: positional[2], isbn: positional[3]
  )
    @title = title
    @author = author
    @type = type
    @isbn = isbn
  end
end

module Reservable
  # gives a reserve status as a boolean
  def reserve(boolean = false)
    @reserved = boolean
  end

  # query method for reserve status
  def reserved?
    @reserved
  end
end

module Loanable
  # due date defaults to 7 days from now
  def due_date(duration_in_days = 7)
    Time.now + duration_in_days * 36_000
  end

  # query method for hold status
  def on_hold?
    @hold
  end
end

module Enablizerinator
  # doctest: I can make individual books loanable
  #          And come to find out I can make them Reservable too
  # >> my_book = Book.new('INAALINAHIMH: The One True Texticate',
  #                                               'Testor Tuttle')
  # >> my_book.respond_to?(:on_hold?)
  # => false
  # doctest: So does it respond to on_hold?
  # >> my_book.make_loanable
  # >> my_book.respond_to?(:on_hold?)
  # => true
  # doctest: I can make my book reservable
  # >> my_book.respond_to?(:make_reservable)
  # => true
  def make_loanable
    singleton_class.include(Loanable)
  end

  def make_reservable
    singleton_class.include(Reservable)
  end
end

Book.include(Enablizerinator)

if __FILE__ == $PROGRAM_NAME
  bana_book = Book.new('The Crazy Scientist: an Autobiography',
                       isbn: '1234445345', author: 'Bandana Malik')
  bana_book.make_loanable
  bana_book.make_reservable
  p bana_book.due_date
  p bana_book.reserve(true)
  p bana_book
end