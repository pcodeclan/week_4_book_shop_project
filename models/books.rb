require_relative( '../db/sql_runner' )

class Book

  attr_reader(:id)
  attr_accessor()

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @publisher_id = options['publisher_id'].to_i
    @cost_price = options['cost_price'].to_f
    @selling_price = options['selling_price'].to_f
    @stock_level = options['stock_level'].to_f
  end

  #CREATE
  def save()
    sql = "INSERT INTO books
    (
      title,
      publisher_id,
      cost_price,
      selling_price,
      stock_level
    )
    VALUES
    (
      $1, $2, $3, $4, $5
    )
    RETURNING id"
    values = [@title, @publisher_id, @cost_price, @selling_price, @stock_level]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  #FIND ALL
  def self.all()
    sql = "SELECT * FROM books"
    results = SqlRunner.run(sql)
    return results.map {|book| Book.new(book)}
  end

  #FIND ONE LINE
  def self.find_by_id(id)
    sql = "SELECT * FROM books
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    return Book.new(results.first)
  end

  #DELETE ALL
  def self.delete_all
    sql = "DELETE FROM books"
    SqlRunner.run(sql)
  end

  #UPDATE
  def self.update_by_id()
      sql = "UPDATE books SET (active) = ($1, $2, $3, $4, $5) WHERE id= $6"
      values = [@title, @publisher_id, @cost_price, @selling_price, @stock_level, @id]
      SqlRunner.run(sql,values)
  end

end
