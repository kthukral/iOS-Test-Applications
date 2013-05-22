//
//  BNRItem.m
//  RandomPossesions
//
//  Created by Karan Thukral on 2013-04-29.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+ (id)randomItem{
    //Create an array of three adjectives
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",@"Rusty",@"Shiny", nil];
    
    //Create an array of three nouns
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear",@"Spock",@"Mac", nil];
    
    //Get random index for the two arrays
    NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];
    NSInteger nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",[randomAdjectiveList objectAtIndex:adjectiveIndex],[randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",'0'+rand() % 10,'A' + rand() % 26, '0'+rand() % 10, 'A' + rand() % 26, '0' + rand() % 10];
    
    BNRItem *newItem = [[self alloc]initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    
    return newItem;
}

- (id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber{
    
    //call the super class's designated initializer
    self = [super init];
    
    //Did the superclass's designated intializer succeed?
    if(self){
    //Give instance variables initial values
    [self setItemName:name];
    [self setSerialNumber:sNumber];
    [self setValueInDollars:value];
    dateCreated = [[NSDate alloc]init];
    }
    
    return self;
}

- (id)init{
    return [self initWithItemName:@"Item" valueInDollars:0 serialNumber:@""];
}

- (id)initwithItemName:(NSString *)name serialNumber:(NSString *)serial{
    return [self initWithItemName:name valueInDollars:0 serialNumber:serial];
}

- (void)setItemName:(NSString *)newItemName{
    itemName = newItemName;
}

- (NSString *)itemName{
    return itemName;
}

- (void)setSerialNumber:(NSString *)newSerialNumber{
    serialNumber = newSerialNumber;
}

- (NSString *)serialNumber{
    return serialNumber;
}

- (void)setValueInDollars:(int)cost{
    valueInDollars = cost;
}

- (int)valueInDollars{
    return valueInDollars;
}

- (NSDate *)dateCreated{
   return dateCreated;
}

//Overwritting the description method
- (NSString *)description{
    NSString *descriptionString = [[NSString alloc]initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", itemName, serialNumber, valueInDollars, dateCreated];
    return descriptionString;
}

@end
