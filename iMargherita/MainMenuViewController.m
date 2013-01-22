//
//  MainMenuViewController.m
//  iMargherita
//
//  Created by Sebastiano Ronzulli on 22/01/13.
//  Copyright (c) 2013 Sebastiano Ronzulli. All rights reserved.
//

#import "MainMenuViewController.h"

@interface MainMenuViewController ()

@end

@implementation MainMenuViewController

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
    
    //Setting background image...
    [self setBackgroundAsImageWithName:@"main_menu.png"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)isRetinaDisplay
{
    return ([[UIScreen mainScreen] respondsToSelector:@selector(displayLinkWithTarget:selector:)] &&
            ([UIScreen mainScreen].scale == 2.0))?1:0;
}

-(void)setBackgroundAsImageWithName:(NSString *)imageName
{
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:imageName]];
    self.view.backgroundColor = background;
}

@end
