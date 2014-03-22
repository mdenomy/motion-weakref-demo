class ToDoItem

  def initialize
    @data = [*1..100000]
    @notifier = Notifier.new
    puts "I'm here #{@data.count}"
  end
end