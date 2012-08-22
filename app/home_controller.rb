class HomeController < UIViewController

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
    @label.text = fizzbuzz_calc(@counter).to_s
  end

  def minusTapped(sender)
    @counter -= 1
    @label.text = fizzbuzz_calc(@counter).to_s
  end

  def resetTapped(sender)
    @counter = 0
    @label.text = "Begin"

    @view_handle.backgroundColor = UIColor.redColor

    show_alert_until_clicked ("Reset button has been tappeed.")

    @view_handle.backgroundColor = UIColor.blueColor
    # @view_handle.backgroundColor = nil

  end

  def backgroundTapped
    @alert.dismiss
    
  end

  def show_alert_until_clicked(themessage)
    UIAlertView.alert("title", 
  message: "help!", 
  buttons: %w"Cancel OK No-way", 
  cancel: proc{ puts "nevermind" }, 
  success: proc{ |pressed| puts "pressed: #{pressed}" },  # => one of  "OK", "No-way" 
  ) 
   #  @alert = UIAlertView.alloc.initWithTitle("Sample Alert",message: "Where will this appear?",delegate: nil,cancelButtonTitle: "Cancel",otherButtonTitles: "Ok")
   #  # @alert.message = message
   #  @alert.show
  end

  def fizzbuzz_calc(this_number)
    return 'fizzbuzz' if this_number % 15 == 0
    return 'buzz' if this_number % 5 == 0
    return 'fizz' if this_number % 3 == 0
    this_number
  end

end
