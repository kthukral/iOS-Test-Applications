//
//  BNRMapPoint.h
//  WhereAmI?
//
//  Created by Karan Thukral on 2013-05-05.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface BNRMapPoint : NSObject <MKAnnotation>
{
    
}

//A new designed initializer for instances of BNRMapPoint
- (id)initWithCoordinate:(CLLocationCoordinate2D)c titile:(NSString *)t;

//This is a readonly property from MKAnnotation
@property (nonatomic,readonly) CLLocationCoordinate2D coordinate;

//This is an optional property from MKAnnotation
@property (nonatomic,copy) NSString *title;


@end
