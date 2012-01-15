//
//  FirstViewController.m
//  PushAndPop
//

#import "FirstViewController.h"
//#import "SecondViewController.h"

@implementation FirstViewController
@synthesize webView4,window;

- (IBAction)push:(id)sender
{

   // SecondViewController *secondViewController = [[SecondViewController alloc] initWithText:@"Welcome"];
   // [self.navigationController pushViewController:secondViewController animated:YES];
}

 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
      //  self.title = @"Number 1";
    }
    
    return self;
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)buttonClickedFace2:(UIView *)view 
{
    NSLog(@"face");
   // [webView4 removeFromSuperview];
    
    [webView4 release];
    
    webView4 = [[UIWebView alloc] initWithFrame:CGRectMake(0, 50, 320, 200)];
    
    //  UIWebView *webView2= [[UIWebView alloc] initWithFrame:CGRectMake(0, 150, 320, 200)];
    //  webView2.delegate= self;
    
	webView4.delegate= self;
	[webView4  loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@
                                                         "http://www.facebook.com/"]]];
    
 //   UIView *uiview=viewController.view;
    
    
	[window addSubview:webView4];
    
    
}




@end
