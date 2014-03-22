class Notifier

  def initialize(item)
    @item = WeakRef.new(item)
    puts "Notifier initialized"
  end
end