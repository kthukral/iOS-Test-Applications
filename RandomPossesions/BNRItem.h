//
//  BNRItem.h
//  RandomPossesions
//
//  Created by Karan Thukral on 2013-04-29.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

+ (id)randomItem;

- (id)initWithItemName:(NSString *)name
        valueInDollars:(int)value
          serialNumber:(NSString *)sNumber;

-(id)initwithItemName:(NSString *)name serialNumber:(NSString *)serial;

- (void)setItemName:(NSString *)newItemName;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)newSerialNumber;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)cost;
- (int)valueInDollars;

- (NSDate *)dateCreated;

@end
