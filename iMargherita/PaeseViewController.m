//
//  PaeseViewController.m
//  iMargherita
//
//  Created by Sebastiano Ronzulli on 23/01/13.
//  Copyright (c) 2013 Sebastiano Ronzulli. All rights reserved.
//

#import "PaeseViewController.h"
#import "Helper.h"

@interface PaeseViewController ()

@property (weak, nonatomic) IBOutlet UITextView *paeseTextView;
@property (weak, nonatomic) IBOutlet UITextView *titleMDS;

@end

@implementation PaeseViewController

@synthesize paeseTextView;
@synthesize titleMDS;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UIScrollView *tempScrollView = (UIScrollView *)self.view;
    tempScrollView.contentSize=CGSizeMake(320,670);
    [paeseTextView setScrollEnabled:0];
    // Makes the title bold
    UIFont *boldFont = [UIFont boldSystemFontOfSize:[UIFont systemFontSize]];
    [titleMDS setFont:boldFont];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setPaeseTextView:nil];
    [self setTitleMDS:nil];
    [super viewDidUnload];
}
@end
