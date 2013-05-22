//
//  WhereAmIViewController.h
//  WhereAmI?
//
//  Created by Karan Thukral on 2013-05-04.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface WhereAmIViewController : UIViewController <CLLocationManagerDelegate , MKMapViewDelegate , UITextFieldDelegate>
{
    CLLocationManager *locationManager;
    
    IBOutlet MKMapView *worldView;
    IBOutlet UIActivityIndicatorView *activityIndicator;
    IBOutlet UITextField *locationTitleField;
}

- (void)findLocation;
- (void)findLocation: (CLLocation *)loc;

@end
