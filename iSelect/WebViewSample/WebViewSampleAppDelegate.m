


#import <QuartzCore/QuartzCore.h>
#import "WebViewSampleAppDelegate.h"
#import "MyView.h"
#import "FirstViewController.h"


@class MyView;


@implementation WebViewSampleAppDelegate

@synthesize window,av,usedArr,arr,textView,viewController,webView3,happyMad;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
    webViewLoads_=0;
    
    viewController = [MyView alloc];

    viewController.view.frame=CGRectMake(50, 50, 300, 370);
    [window addSubview:viewController.view];
    
    

    [window makeKeyAndVisible];
        
    viewController.view.backgroundColor =[UIColor colorWithPatternImage:[UIImage imageNamed:@"paper2.jpg"]];

    }

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    webViewLoads_--;
    
	printf("\n started");
    
    //loading the page animation
	av = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle
          :UIActivityIndicatorViewStyleWhiteLarge];
	av.frame=CGRectMake(130, 80, 50, 50);
    
	av.tag  = 1;
	[webView addSubview:av];
	[av startAnimating];
    
    
    
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    
    webViewLoads_++;
	printf("\n stopped");

    
	UIActivityIndicatorView *tmpimg = (UIActivityIndicatorView *
                                       )[webView viewWithTag:1];
	[tmpimg removeFromSuperview];
    
    if (webViewLoads_ ==0) { 

    NSMutableString *myText=[webView stringByEvaluatingJavaScriptFromString:@"document.documentElement.innerText"];
        
    
        if(arr==[myText componentsSeparatedByString:@"\n"]){
            boo=false;
            
        }
        else{
           arr = [myText componentsSeparatedByString:@"\n"];
            boo=true;
        }

        
        if(happyMad==1){
        
        
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"joy" ofType:@"txt"];  
        NSString *aText = [NSString stringWithContentsOfFile:filePath];  
        NSArray *lines= [aText componentsSeparatedByString:@"\n"];
                

        
        NSString *filePath2 = [[NSBundle mainBundle] pathForResource:@"joy2" ofType:@"txt"];  
        NSString *aText2 = [NSString stringWithContentsOfFile:filePath2];  
        NSArray *lines2= [aText2 componentsSeparatedByString:@"\n"];
        
    
    for (id para in arr){
        
        
        int boolJoy=0;
        
        for(id line in lines){
            
            line=[line substringFromIndex:11];
            
            if([para rangeOfString:line].location != NSNotFound){
                
                boolJoy=1;
             //   NSLog(@"ok");
            }
        }
        
        for(id line in lines2){
            
            
            if([para rangeOfString:line].location != NSNotFound){
                
                boolJoy=1;
            }
        }

        
        if (([para rangeOfString:@" joy "].location != NSNotFound ||
                          boolJoy==1 ||
             

            [para rangeOfString:@"wow"].location != NSNotFound) &
            
            (            ([para rangeOfString:@"fail"].location == NSNotFound) &
             
             true)
            
            
            ){


            NSLog(para);
            NSMutableString *mstr=viewController.textView.text;
            [mstr appendString:para];
            [mstr appendString:@"\n"];
            [mstr appendString:@"\n"];


            

            viewController.textView.text=mstr;
            
            
        
            }  
            
    }
            
        } 
            else
            {
                
                
                
                

                NSString *filePath3 = [[NSBundle mainBundle] pathForResource:@"mad" ofType:@"txt"];  
                NSString *aText3 = [NSString stringWithContentsOfFile:filePath3];  
                NSArray *lines3= [aText3 componentsSeparatedByString:@"\n"];
                
                
                for (id para in arr){
                    
                    
                    int boolAnger=0;
                                      
                    for(id line in lines3){
                        
                        
                        if([para rangeOfString:line].location != NSNotFound){
                            
                            boolAnger=1;
                        }
                    }
                    
                    
                    if (([para rangeOfString:@" mad "].location != NSNotFound ||
                         boolAnger==1 ||
                                                  
                         [para rangeOfString:@"anger"].location != NSNotFound) &
                        
                        (            ([para rangeOfString:@"joy"].location == NSNotFound) &
                         
                         true)
                                                
                        ){
                        
                        NSLog(para);
                        NSMutableString *mstr=viewController.textView.text;
                        [mstr appendString:para];
                        [mstr appendString:@"\n"];
                        [mstr appendString:@"\n"];
                        
                        viewController.textView.text=mstr;
                       }  
                }
            }
    }

    
    for(id para in usedArr){
        
        NSLog(para);
    }
        

}


- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
}

- (IBAction)buttonClicked:(UIView *)view 
{

    
    CGRect frame = view.frame;
    frame.size.height = 300;
    frame.origin.x = 0;
    frame.origin.y = 0;

    
    
    FirstViewController *firstViewController = [[FirstViewController alloc] initWithNibName:@"FirstView" bundle:nil];
    firstViewController.view.frame=frame;
    [window addSubview:firstViewController.view];

    

}


- (IBAction)buttonClickedGoogle:(UIView *)view 
{
    
    webViewLoads_=0;

    
    [webView3 removeFromSuperview];
    
    [webView3 release];
    
    webView3 = [[UIWebView alloc] initWithFrame:CGRectMake(0, 50, 320, 200)];
    
    
	webView3.delegate= self;
	[webView3  loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@
                                                         "http://www.google.com/"]]];
    //     "http://jasmalltowngirl.tumblr.com/post/13064111243/cheerful-giving-new-blog-on-2-corinthians-9-5-7"]]];
    
    
    
    UIView *uiview=viewController.view;
    
    
      
	[window addSubview:webView3];
    

    
}

- (IBAction)buttonClickedFace:(UIView *)view 
{
    NSLog(@"face");
    [webView3 removeFromSuperview];
    
    [webView3 release];
    
    webView3 = [[UIWebView alloc] initWithFrame:CGRectMake(0, 50, 320, 200)];

    
	webView3.delegate= self;
	[webView3  loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@
                                                         "http://www.facebook.com/"]]];

    UIView *uiview=viewController.view;
    
    
	[window addSubview:webView3];
    

}



- (IBAction)screenTouched:(UIView *)view 
{
    
    NSLog(@"screen touched");
    
     [webView3 removeFromSuperview];
    
}


- (IBAction)beHappy:(UIView *)view
{
    
    if(happyMad==0){
        viewController.textView.text=@"";
    }
    
    happyMad=1;
    NSLog(@"behappy");
    viewController.view.backgroundColor =[UIColor colorWithPatternImage:[UIImage imageNamed:@"paper2.jpg"]];

}



- (IBAction)beMad:(UIView *)view{
    
    if(happyMad==1){
        viewController.textView.text=@"";
    }
    happyMad=0;
    NSLog(@"bemad");
    viewController.view.backgroundColor =[UIColor colorWithPatternImage:[UIImage imageNamed:@"paper5.jpg"]];
    viewController.textView.text=@"";

}




- (void)buttonPressed:(UIView *)view 
{
    // Capture screen here...
    CGImageRef screen = UIGetScreenImage();
    UIImage* image = [UIImage imageWithCGImage:screen];
    CGImageRelease(screen);
    
    // Save the captured image to photo album
    UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
}



- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    UIAlertView *alert;
    
    // Unable to save the image  
    if (error)
        alert = [[UIAlertView alloc] initWithTitle:@"Error" 
                                           message:@"Unable to save image to Photo Album." 
                                          delegate:self cancelButtonTitle:@"Ok" 
                                 otherButtonTitles:nil];
    else // All is well
        alert = [[UIAlertView alloc] initWithTitle:@"Success" 
                                           message:@"Image saved to Photo Album." 
                                          delegate:self cancelButtonTitle:@"Ok" 
                                 otherButtonTitles:nil];
    [alert show];
    [alert release];
}





- (void)dealloc {
    [window release];    
    [av release];
    [usedArr release];
    [arr release];
    [textView release];
    [viewController release];
    [webView3 release];
    [super dealloc];
}





@end
