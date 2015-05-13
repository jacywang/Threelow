//
//  Dice.m
//  Threelow
//
//  Created by JIAN WANG on 5/12/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(instancetype)init {
    self = [super self];
    
    NSArray *diceFaceArray = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
    
    if (self) {
        _diceNumber = arc4random_uniform(6);
        _face = diceFaceArray[_diceNumber];
    }
    
    return self;
}

@end
