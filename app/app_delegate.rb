class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = FizzBuzzViewController.alloc.init
#    @window.rootViewController = NSBundle.mainBundle.loadNibNamed('FizzBuzzView', owner:self, options:nil).first
#    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible
    true
  end
end

