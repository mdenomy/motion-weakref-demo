class DemoController < UIViewController

  def viewDidLoad
    view.backgroundColor = UIColor.whiteColor

    addButtons
  end

  private

  def addButtons
    self.view.addSubview(UIButton.buttonWithType(UIButtonTypeRoundedRect).tap do |btn|
      btn.setTitle('Create Item', forState: UIControlStateNormal)
      btn.addTarget(self, action: :create_item, forControlEvents:UIControlEventTouchUpInside)
      btn.frame = [[100, 100], [100, 50]]
    end)

    self.view.addSubview(UIButton.buttonWithType(UIButtonTypeRoundedRect).tap do |btn|
      btn.setTitle('Delete Item', forState:UIControlStateNormal)
      btn.addTarget(self, action: :delete_item, forControlEvents:UIControlEventTouchUpInside)
      btn.frame = [[100, 150], [100, 50]]
    end)
  end

  def create_item
    puts 'Creating item'
    @item = ToDoItem.new
  end

  def delete_item
    puts 'Deleting item'
    @item = nil
  end

end
