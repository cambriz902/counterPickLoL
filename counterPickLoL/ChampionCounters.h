//
//  ChampionCounters.h
//  counterPickLoL
//
//  Created by christian ambriz on 10/24/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#ifndef counterPickLoL_ChampionCounters_h
#define counterPickLoL_ChampionCounters_h

#import "Foundation/Foundation.h"

@interface ChampionCounters : NSObject

@property (strong, nonatomic) NSString  *champion;
@property (strong, nonatomic) NSString *strongOne;
@property (strong, nonatomic) NSString *strongTwo;
@property (strong, nonatomic) NSString *strongThree;
@property (strong, nonatomic) NSString *strongFour;
@property (strong, nonatomic) NSString *strongFive;
@property (strong, nonatomic) NSString *weakOne;
@property (strong, nonatomic) NSString *weakTwo;
@property (strong, nonatomic) NSString *weakThree;
@property (strong, nonatomic) NSString *weakFour;
@property (strong, nonatomic) NSString *weakFive;

- (id) init;

- (id) initWithStrongOne:(NSString *)strongOne
               strongTwo:(NSString *)strongTwo
             strongThree:(NSString *)strongThree
              strongFour:(NSString*)strongFour
              strongFive:(NSString*)strongFive
                 weakOne:(NSString*)weakOne
                 weakTwo:(NSString*)weakTwo
               weakThree:(NSString*)weakThree
                weakFour:(NSString*)weakFour
                weakFive:(NSString*)weakfive;

@end

#endif
