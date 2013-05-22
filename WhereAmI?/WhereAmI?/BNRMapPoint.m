//
//  BNRMapPoint.m
//  WhereAmI?
//
//  Created by Karan Thukral on 2013-05-05.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import "BNRMapPoint.h"

@implementation BNRMapPoint

- (id)initWithCoordinate:(CLLocationCoordinate2D)c titile:(NSString *)t{
    self = [super init];
    if (self){
        _coordinate = c;
        [self setTitle:t];
    }
    return self;
}

- (id)init {
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32) titile:@"HomeTown"];
}



@end
