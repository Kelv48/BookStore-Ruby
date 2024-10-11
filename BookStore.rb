# A mock up bookstore to practice basic Ruby programming

class Book
  #Constructors for the book class
  def initialize(title, price)
    @title = title
    @price = price
  end

  #A method to diplay all the books info
  def info
    puts "Title: #{@title}, Price: #{@price}"
  end

  #Getter methods for the price
  def price
    @price
  end
end

class BookInventory
  def initialize
    @books = []
  end

  #Method to add a book to the inventory
  def add(book)
    @books << book
  end

  #Method to display all the books in the inventory
  def display
    if @books.empty?
      puts "No books in the inventory"
    else
      puts "Books in the inventory:"
      @books.each { |book| book.info}
    end
  end

  #Method to calculate the total price of all the books in the inventory
  def total
    total = 0
    @books.each { |book| total += book.price}
    puts "Total price of all books: #{total}"
  end
end

#Method for a menu and to get user input
def menu
  puts "Welcome to the bookstore inventory system!"
  puts "Choose an option:"
  puts "1. Add a book"
  puts "2. Display all books"
  puts "3. Calculate total price"
  puts "4. Exit"
  gets.chomp.to_i
end

#Main Loop
inventory = BookInventory.new

loop do
  choice = menu

  case choice
  when 1
    #Add a book
    puts "Enter the title of the book:"
    title = gets.chomp
    puts "Enter the price of the book:"
    price = gets.chomp.to_f
    book = Book.new(title, price)
    inventory.add(book)
    puts "Book added!"
  when 2
    #Display all books
    inventory.display
  when 3
    #Calculate total price
    inventory.total
  when 4
    #Exit
    puts "Goodbye!"
    break
  else
    #User entered an invalid choice
    puts "Invalid choice"
  end
end