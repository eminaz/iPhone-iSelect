//
//  MyView.m
//  WebViewSample
//
//  Created by Mark Xie on 12/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MyView.h"


@implementation MyView

@synthesize textView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    
    
    if (self = [self initWithNibName:@"MyView" bundle:nil]) {
        self.title = @"Second";
    }
    
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{

    
    
   // self.view.backgroundColor =[UIColor colorWithPatternImage:[UIImage imageNamed:@"scroll23.jpg"]];
    

    [super viewDidLoad];
}

- (void)viewDidUnload
{
    
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


/*
- (void)loadView {
    
    self.view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
	self.view.backgroundColor = [UIColor yellowColor];
}
*/




@end
