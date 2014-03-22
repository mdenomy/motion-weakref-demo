class ToDoItem

  def initialize
    @data = [*1..100000]
    puts "I'm here #{@data.count}"
  end
end