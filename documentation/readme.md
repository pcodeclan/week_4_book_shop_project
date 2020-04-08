About:
Congratulations for purchasing the Bookshop Inventory Manager!
You're just about to embark of a quantitative literary adventure of a lifetime!
You can create, delete and update publishers and books and manage your stock and inventory.
Publishers can be activated or deactivated and when creating new books you will not see it.

This program uses Ruby, PSQL, the Sinatra framework.

============================
Instructions:

* This program was made and run in MacOS. Other OS may differ.
* Make sure your system has PSQL and Sinatra installed. For more information, see (http://sinatrarb.com/)

1) Open Terminal
2) Navigate to Directory
3) Create database. Type: "CREATEDB bookshop"
3) Run bookshop.sql to set the database structure. Type: "psql -d bookshop -f db/bookshop.sql"
4) Run seeds file to populate the database. Type "ruby db/seeds.db"
5) Start program. Type "ruby console.rb"
6) When local server is running, In browser, navigate to: "localhost:4567"
7) To exit, press "CTRL C" in terminal.

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

V 1.39 - Fixed check stock condition method in books.rb. Added .round function to markup.

V 1.40 - Added code to books/edit.rb. Added edit button to books/index and books/show.

V 1.41 - Fixed Delete on books. Added £ signs to any currency boxes.

V 1.42 - When creating a new book, inactive publishers are not shown.

V 1.43 - Added more styling to tables.

V 1.44 - Added Image to site.

V 1.45 - Updated Readme.md. Added documents to /documentation

V 1.46 - Implemented sort function into both books and publisher lists.
