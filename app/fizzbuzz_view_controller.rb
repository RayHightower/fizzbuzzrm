class FizzBuzzViewController < UIViewController
  def loadView
    self.view = UIImageView.alloc.init
  end

  def viewDidLoad
    @label = UILabel.alloc.initWithFrame([[10,60], [300,80]])
    view.addSubview(@label)

    view.image = UIImage.imageNamed('fizzbuzzbackground.jpg')
  end

  def self.calc(this_number)
    return 'fizzbuzz' if this_number % 15 == 0
    return 'buzz' if this_number % 5 == 0
    return 'fizz' if this_number % 3 == 0
    this_number
    
  end
end
