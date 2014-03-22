class ToDoItem

  def initialize
    @data = [*1..100000]
    @notifier = Notifier.new(self)
    puts "ToDoItem initialized"
  end
end