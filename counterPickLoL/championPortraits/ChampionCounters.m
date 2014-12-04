//
//  ChampionCounters.m
//  counterPickLoL
//
//  Created by christian ambriz on 12/2/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import "ChampionCounters.h"

@interface ChampionCounters ()

@end

@implementation ChampionCounters

- (id) init{
    self = [super init];
    if (self) {
            }
    return self;
}

- (id) initWithStrongOne:(NSString *)strongOne strongTwo:(NSString *)strongTwo strongThree:(NSString *)strongThree
              strongFour:(NSString*)strongFour strongFive:(NSString*)strongFive weakOne:(NSString*)weakOne
                 weakTwo:(NSString*)weakTwo weakThree:(NSString*)weakThree weakFour:(NSString*)weakFour
                weakFive:(NSString*)weakFive{
    self = [self init];
    if ( self ){
        self.strongOne = strongOne;
        self.strongTwo = strongTwo;
        self.strongThree = strongThree;
        self.strongFour = strongFour;
        self.strongFive = strongFive;
        self.weakOne = weakOne;
        self.weakTwo = weakTwo;
        self.weakThree = weakThree;
        self.weakFour = weakFour;
        self.weakFive = weakFive;
    }
    return self;
}

@end