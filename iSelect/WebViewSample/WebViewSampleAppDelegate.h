//
//  WebViewSampleAppDelegate.h
//  WebViewSample
//
//  Created by Mark Xie on 11/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MyView;
@class MyTableViewController;


@interface WebViewSampleAppDelegate : NSObject <UIWebViewDelegate>{

//NSObject <UIApplicationDelegate>{
    
    UIWindow *window;
	UIActivityIndicatorView *av;
    Boolean boo;
    UITextView *textView;
    
    int webViewLoads_;
    
    MyView *viewController;
    MyTableViewController *myTableViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) UIActivityIndicatorView *av;
@property (nonatomic, retain)      NSMutableArray *usedArr;
@property (nonatomic, retain)      NSMutableArray *arr;
@property (nonatomic, retain)  IBOutlet    UITextView *textView;

@property (nonatomic, retain)          MyView *viewController;

@property (nonatomic, retain)  UIWebView *webView3;

@property (nonatomic)  int happyMad;


//- (IBAction)buttonClicked:(id)sender;
- (IBAction)buttonClicked:(UIView *)view ;

- (IBAction)buttonPressed:(UIView *)view ;

- (IBAction)screenTouched:(UIView *)view ;

- (IBAction)buttonClickedGoogle:(UIView *)view ;

- (IBAction)buttonClickedFace:(UIView *)view;

- (IBAction)beHappy:(UIView *)view;

- (IBAction)beMad:(UIView *)view;



@end



