require_relative( '../db/sql_runner' )

class Publisher

  attr_reader(:name, :id)
  attr_accessor(:active)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @active = options['active']
  end

  #CREATE
  def save()
    sql = "INSERT INTO publishers
    (
      name,
      active
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@name, @active]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  #FIND ALL
  def self.all()
    sql = "SELECT * FROM publishers"
    results = SqlRunner.run(sql)
    return results.map {|publisher| Publisher.new(publisher)}
  end

  #FIND ONE LINE
  def self.find_by_id(id)
    sql = "SELECT * FROM publishers
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values).first
    return Publisher.new(results) #Returns the first line it returns
  end

  #UPDATE
  def update_by_id()
      sql = "UPDATE publishers SET active = $1 WHERE id= $2"
      values = [@active ,@id]
      SqlRunner.run(sql,values)
  end

  #DELETE ONE LINE
  def self.delete_by_id(id)
    sql = "DELETE FROM publishers WHERE id = $1"
    values = [id]
    SqlRunner.run(sql,values)
  end

  #DELETE ALL
  def self.delete_all
    sql = "DELETE FROM publishers"
    SqlRunner.run(sql)
  end


end
