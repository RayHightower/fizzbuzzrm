class AppDelegate

   def application(application, 
              didFinishLaunchingWithOptions:launchOptions)

     window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

     # window.rootViewController =
     #        HomeController.alloc.init

     window.rootViewController = FizzBuzzViewController.alloc.init

     window.makeKeyAndVisible

     true

   end
 end
