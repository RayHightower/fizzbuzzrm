class FizzBuzzViewController < UIViewController

  def loadView
    views = NSBundle.mainBundle.loadNibNamed "fbib", owner:self, options:nil
    self.view = views[0]
    @counter = 0
    @view_handle = self.view
  end

  def viewDidLoad
    @label = view.viewWithTag 1
    plus_button = view.viewWithTag 2
    minus_button = view.viewWithTag 3
    reset_button = view.viewWithTag 4
    # background_area = view.viewWithTag 5

    plus_button.addTarget(self, action:'plusTapped:', forControlEvents:UIControlEventTouchUpInside)
    minus_button.addTarget(self, action:'minusTapped:', forControlEvents:UIControlEventTouchUpInside)
    reset_button.addTarget(self, action:'resetTapped:', forControlEvents:UIControlEventTouchUpInside)
    # background_area.addTarget(self, action:'backgroundTapped:', forControlEvents:UIControlEventTouchUpInside)
  end

  def plusTapped(sender)
    @counter += 1
    @label.text = FizzBuzzViewController.fbcalc(@counter).to_s
  end

  def minusTapped(sender)
    @counter -= 1
    @label.text = FizzBuzzViewController.fbcalc(@counter).to_s
  end

  def resetTapped(sender)
    @counter = 0
    @label.text = "Begin"

    rotate_background(@view_handle)

  end

  def rotate_background(view_handle)
    @color_index ||= 0

    case @color_index
    when 0
      @view_handle.backgroundColor = UIColor.redColor
    when 1
      @view_handle.backgroundColor = UIColor.greenColor
    when 2
      @view_handle.backgroundColor = UIColor.blueColor
    when 3
      @view_handle.backgroundColor = UIColor.yellowColor
    end

    @color_index = (@color_index +1) % 4
    
  end

  def self.fbcalc(this_number)
    return 'fizzbuzz' if this_number % 15 == 0
    return 'buzz' if this_number % 5 == 0
    return 'fizz' if this_number % 3 == 0
    this_number
  end

end
