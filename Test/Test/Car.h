//
//  Car.h
//  Test
//
//  Created by user on 08.11.2017.
//  Copyright © 2017 user. All rights reserved.
//

#import <Foundation/Foundation.h>

//int gGlobalVariable;

@interface Car : NSObject
{
    int amountOfWheels;
    int amountOfDoors;
    NSString* model;
}

@property int amountOfWheels, amountOfDoors;
@property NSString* model;

+(Car *)allocWithCounter;
+(unsigned int)countOfInstances;

-(id)initWithAmountOfWheels:(int) w;

-(void)setAmountOfWheels:(int) w andAmountOfDoors:(int) d andModel:(NSString*) m;

-(void)changeGlobalVariable: (int) value;
-(int)getValueOfGlobalVariable;

@end
