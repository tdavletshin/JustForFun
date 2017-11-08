//
//  Car.m
//  Test
//
//  Created by user on 08.11.2017.
//  Copyright © 2017 user. All rights reserved.
//

#import "Car.h"

extern int gGlobalVariable;
static unsigned int gCountOfInctaces = 0;


@implementation Car
@synthesize  amountOfDoors, amountOfWheels;
@synthesize model;

-(void)setAmountOfWheels:(int)w andAmountOfDoors:(int)d andModel:(NSString *)m
{
    self.amountOfDoors = d;
    self.amountOfWheels = w;
    self.model = m;
    return;
}

-(void)changeGlobalVariable:(int)value
{
    //extern int gGlobalVariable;
    gGlobalVariable = value;
    return;
}

-(int)getValueOfGlobalVariable
{
    //extern int gGlobalVariable;
    return gGlobalVariable;
}

+(Car *)allocWithCounter
{
    extern unsigned int gCountOfInctaces;
    Car* res = [super alloc];
    gCountOfInctaces += 1;
    return res;
}

+(unsigned int)countOfInstances
{
    return  gCountOfInctaces;
}

-(id)initWithAmountOfWheels:(int)w
{
    self = [super init];
    self.amountOfWheels = w;
    return self;
}

@end

