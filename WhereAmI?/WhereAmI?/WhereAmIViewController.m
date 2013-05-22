//
//  WhereAmIViewController.m
//  WhereAmI?
//
//  Created by Karan Thukral on 2013-05-04.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import "WhereAmIViewController.h"
#import "BNRMapPoint.h"

@interface WhereAmIViewController ()

@end

@implementation WhereAmIViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self){
        //Create Location Manager Object
        locationManager = [[CLLocationManager alloc]init];
        
        //Set this viewController as delegate for location manager
        [locationManager setDelegate:self];
        
        //And we want it to be as accurate as possible
        //regardless of how much time/power it takes
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
}
    
    return self;
}

- (void)viewDidLoad{
    [worldView setShowsUserLocation:YES];
}

- (void)findLocation{
    [locationManager startUpdatingLocation];
    [activityIndicator startAnimating];
    [locationTitleField setHidden:YES];
}

- (void)findLocation:(CLLocation *)loc{
    CLLocationCoordinate2D coord = [loc coordinate];
    
    //Create an instance of BNRMapPoint with the current data
    BNRMapPoint *mp = [[BNRMapPoint alloc]initWithCoordinate:coord titile:[locationTitleField text]];
    
    //Add it to map view
    [worldView addAnnotation:mp];
    
    //Zoom to this location
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coord, 250, 250);
    [worldView setRegion:region animated:YES];
    
    //Reset the UI
    [locationTitleField setText:@""];
    [activityIndicator stopAnimating];
    [locationTitleField setHidden:NO];
    [locationManager stopUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"%@",newLocation);
    
    //How many seconds ago was the location created
    NSTimeInterval t = [[newLocation timestamp] timeIntervalSinceNow];
    
    //CLLocationManager will return the last found location of the device first, you don't want that data in thus case. If this location was made more than 3 min ago, ignore it
    
    if(t<-180){
        //cached data
        return;
    }
    [self findLocation:newLocation];
}

- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error
{
    
    NSLog(@"Could not find location: %@",error);
    
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    
    CLLocationCoordinate2D loc = [userLocation coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    [worldView setRegion:region animated:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self findLocation];
    
    [textField resignFirstResponder];
    
    return YES;
}

- (void)dealloc{
    //tell the location manager to stop sending messages
    [locationManager setDelegate:nil];
}
@end
