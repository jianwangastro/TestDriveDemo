//
//  iphoneproject002ViewController.m
//  iphoneproject002
//
//  Created by Monkeys! on 6/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iphoneproject002ViewController.h"
#import "secondView.h"
#import "settings.h"

@implementation iphoneproject002ViewController

-(IBAction)switchView:(id)sender {
    secondView *second =  [[secondView alloc ] initWithNibName:nil bundle:nil];
    second.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:second animated:YES];
}



-(IBAction)switchSetting:(id)sender {
    settings *second =  [[settings alloc ] initWithNibName:nil bundle:nil];
    second.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:second animated:YES];
}




@synthesize mapview;

-(IBAction) getLocatoion {
    mapview.showsUserLocation = YES;
}

-(IBAction)setMap:(id)sender {
    switch (((UISegmentedControl *) sender).selectedSegmentIndex) {
        case 0:
            mapview.mapType  = MKMapTypeStandard;
            break;
        case 1:
            mapview.mapType  = MKMapTypeSatellite;
            break;
        case 2:
            mapview.mapType  = MKMapTypeHybrid;
            break;
        default:
            break;
    }
}



- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle



 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
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
    // return (interfaceOrientation == UIInterfaceOrientationPortrait);
    return YES;
}

@end
