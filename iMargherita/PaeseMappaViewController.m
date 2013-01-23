//
//  PaeseMappaViewController.m
//  iMargherita
//
//  Created by Sebastiano Ronzulli on 23/01/13.
//  Copyright (c) 2013 Sebastiano Ronzulli. All rights reserved.
//

#import "PaeseMappaViewController.h"

#define METERS_PER_MILE 1609.344

@interface PaeseMappaViewController ()

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation PaeseMappaViewController

@synthesize mapView;

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
}

-(void)viewWillAppear:(BOOL)animated
{
    CLLocationCoordinate2D myLocation;
    myLocation.latitude = 41.373516;
    myLocation.longitude = 16.149719;
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(myLocation, 0.9*METERS_PER_MILE,0.9*METERS_PER_MILE);
    MKCoordinateRegion adjustRegion = [mapView regionThatFits:viewRegion];
    [mapView setRegion:adjustRegion animated:1];
    [mapView setShowsUserLocation:1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setMapView:nil];
    [super viewDidUnload];
}
@end
