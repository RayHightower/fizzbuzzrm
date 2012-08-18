class HomeController < UIViewController

  def loadView
    views = NSBundle.mainBundle.loadNibNamed "fbib", owner:self, options:nil
    self.view = views[0]
    @display = 0
  end

  def viewDidLoad
    plus_button = view.viewWithTag 2
    minus_button = view.viewWithTag 3
    @label = view.viewWithTag 1
    plus_button.addTarget(self, action:'plusTapped:', forControlEvents:UIControlEventTouchUpInside)
    minus_button.addTarget(self, action:'minusTapped:', forControlEvents:UIControlEventTouchUpInside)
  end

  def plusTapped(sender)
    @display = @display + 1
    @label.text = @display.to_s
  end

  def minusTapped(sender)
    @display = @display - 1
    @label.text = @display.to_s
  end

end
