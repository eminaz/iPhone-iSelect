//
//  MyView.h
//  WebViewSample
//
//  Created by Mark Xie on 12/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MyView : UIViewController{
    
    
    UITextView *textView;

}

//- (IBAction)buttonClicked:(id)sender;

@property (nonatomic, retain)  IBOutlet    UITextView *textView;




@end
