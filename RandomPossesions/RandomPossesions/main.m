//
//  main.m
//  RandomPossesions
//
//  Created by Karan Thukral on 2013-04-29.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        //Creating an instance of NSMutableArray
        NSMutableArray *items = [[NSMutableArray alloc]init];
        
        for (int i=0;i<10;i++){
            BNRItem *p = [BNRItem randomItem];
            [items addObject:p];
        }
        /*
        for (int i=0;i<10;i++){
            NSLog(@"%@",[items objectAtIndex:i]);
        }
        */
        
        
        for (BNRItem *item in items){
            NSLog(@"%@",item);
        }
        
        /*
        
        BNRItem *p = [[BNRItem alloc]initWithItemName:@"Red Sofa" valueInDollars:100 serialNumber:@"A1B2C"];
        NSLog(@"%@",p);
        
        
        //Send Messaged to items, run class methods
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        [items insertObject:@"Zero" atIndex:0];
        
        //Log every object in the array
        for (int i=0;i<[items count];i++){
            NSLog(@"%@",[items objectAtIndex:i]);
        }
        
        BNRItem *p = [[BNRItem alloc]init];
        NSLog(@"%@",p);
        
        //Set the value for instance variables
        
        [p setItemName:@"Red Sofa"];
        [p setSerialNumber:@"A1B2C"];
        [p setValueInDollars:100];
        
        NSLog(@"%@",p);
         */
        
        //Destroy the array pointed to by items
        items = nil;
        
    }
    return 0;
}

