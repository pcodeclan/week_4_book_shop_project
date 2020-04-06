
============================
Version History:

V 1.0 - Created Use case diagram.
	Created Class Diagram
	Created project folder structure
	Created model files using CRUD. Books.rb, Publisher.rb

V 1.1 - Created views for publisher and books

V 1.2 - Created views/index.erb and views/publishers/index.erb

V 1.3 - Fixed Typo in bookshop.sql - DROP TABLE pubishers to DROP TABLE publishers.

V 1.31 - Seed database. Create seed.rb file in /db.
	 	Created publisher name and active columns.

V 1.32 - Publishers_controller.rb. Fixed the INDEX command. Added   erb(:"publishers/index")

V 1.33 -  In the publishers.rb model, users can now create a new publisher, set the boolean active variable to true or false.
		Added the show.erb to publishers and allowed users to delete a publisher.

V 1.34 - Created new documents folder.
		Added Readme.md, diagrams, RESTFUL routes.

V 1.35 - Changed homepage welcome message. Fixed the edit issue and got it to work.

V 1.36 - Wrote code for books_controller.rb, books/index.erb, new.erb, show.erb. Added to books.rb, check_stock_condition() and calc_markup().

V 1.37 - Added “genre” to books table and associated methods. Created books entries in seeds.rb

V 1.38 - Fixed the calculate markup method within books.rb. And implemented it successfully in the view.
