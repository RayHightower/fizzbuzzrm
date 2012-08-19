class HomeController < UIViewController

  def loadView
    views = NSBundle.mainBundle.loadNibNamed "fbib", owner:self, options:nil
    self.view = views[0]
    @counter = 0
  end

  def viewDidLoad
    plus_button = view.viewWithTag 2
    minus_button = view.viewWithTag 3
    reset_button = view.viewWithTag 4
    @label = view.viewWithTag 1
    plus_button.addTarget(self, action:'plusTapped:', forControlEvents:UIControlEventTouchUpInside)
    minus_button.addTarget(self, action:'minusTapped:', forControlEvents:UIControlEventTouchUpInside)
    reset_button.addTarget(self, action:'resetTapped:', forControlEvents:UIControlEventTouchUpInside)
  end

  def plusTapped(sender)
    @counter += 1
    @label.text = fizzbuzz_calc(@counter).to_s
  end

  def minusTapped(sender)
    @counter -= 1
    @label.text = fizzbuzz_calc(@counter).to_s
  end

  def resetTapped(sender)
    @counter = 0
    @label.text = "Begin"

    alert = UIAlertView.new
    alert.message = "Counter has been reset to zero."
    alert.show
    sleep 5.0
    alert.dismiss

  end

  def fizzbuzz_calc(this_number)
    return 'fizzbuzz' if this_number % 15 == 0
    return 'buzz' if this_number % 5 == 0
    return 'fizz' if this_number % 3 == 0
    this_number
  end

end
