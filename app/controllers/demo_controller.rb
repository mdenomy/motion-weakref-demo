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
    alert = UIAlertView.new
    alert.message = "Create item"
    alert.addButtonWithTitle "OK"    
    alert.show
  end

  def delete_item
    alert = UIAlertView.new
    alert.message = "Delete item"
    alert.addButtonWithTitle "OK"    
    alert.show
  end

end
