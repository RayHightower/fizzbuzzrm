class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
#    @window.rootViewController = NSBundle.mainBundle.loadNibNamed('FizzBuzzView', owner:self, options:nil).first
#    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible
#    alert = UIAlertView.new
#    alert.message = "Let's do FizzBuzz!"
#    alert.show
    true
  end
end

