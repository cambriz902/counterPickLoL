//
//  ChampionsCounters.h
//  counterPickLoL
//
//  Created by christian ambriz on 12/2/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChampionsCounters : NSObject

@property (strong, nonatomic) NSMutableDictionary *championStrongWeakCounters;
@property (strong, nonatomic) NSMutableArray *championNames;


- (void)initializeChampionStrongWeakCounters: (NSMutableArray *) championCountersList;

- (id) initWithJSON;

@end
