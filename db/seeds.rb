require_relative("../models/publishers")
require_relative("../models/books")
require("pry-byebug")

Book.delete_all()
Publisher.delete_all()

publisher1 = Publisher.new({
  "name" => "Penguin",
  "active" => "true"
  })
publisher1.save()

publisher2 = Publisher.new({
  "name" => "HarperCollins",
  "active" => "true"
  })
publisher2.save()

publisher3 = Publisher.new({
  "name" => "Hammer and Sickle",
  "active" => "false"
  })
publisher3.save()

book1 = Book.new({
  "title" => "Animal Farm",
  "genre" => "Fiction",
  "cost_price" => "2.99",
  "selling_price" => "9.99",
  "stock_level" => "10",
  "publisher_id" => "1"
  })
book1.save()

book2 = Book.new({
  "title" => "1984",
  "genre" => "Fiction",
  "cost_price" => "1.99",
  "selling_price" => "7.99",
  "stock_level" => "5",
  "publisher_id" => "1"
  })
book2.save()

book3 = Book.new({
  "title" => "How to Life",
  "genre" => "Non-Fiction",
  "cost_price" => "3.99",
  "selling_price" => "12.99",
  "stock_level" => "3",
  "publisher_id" => "2"
  })
book3.save()

book4 = Book.new({
  "title" => "Smooching for Dummies",
  "genre" => "Fiction",
  "cost_price" => "4.99",
  "selling_price" => "15.99",
  "stock_level" => "0",
  "publisher_id" => "2"
  })
book4.save()

book5 = Book.new({
  "title" => "Pillow Talk with Stalin",
  "genre" => "Erotica",
  "cost_price" => "2.99",
  "selling_price" => "9.99",
  "stock_level" => "4",
  "publisher_id" => "3"
  })
book5.save()

book6 = Book.new({
  "title" => "DIY Banana Republic",
  "genre" => "Reference",
  "cost_price" => "3.99",
  "selling_price" => "16.99",
  "stock_level" => "1",
  "publisher_id" => "3"
  })
book6.save()

binding.pry
nil
