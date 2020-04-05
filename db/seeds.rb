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


binding.pry
nil
