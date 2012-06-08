class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    alert = UIAlertView.new
    alert.message = "Let's do FizzBuzz!"
    alert.show
    true
  end
end

