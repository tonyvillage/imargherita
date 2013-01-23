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

@property (strong, nonatomic) IBOutlet UITextView *descPaese;

@end

@implementation PaeseViewController

@synthesize descPaese;

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
    tempScrollView.contentSize=CGSizeMake(320,630);
    [descPaese setScrollEnabled:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setDescPaese:nil];
    [super viewDidUnload];
}
@end
