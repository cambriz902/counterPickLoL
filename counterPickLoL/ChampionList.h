//
//  ChampionList.h
//  counterPickLoL
//
//  Created by christian ambriz on 10/24/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#ifndef counterPickLoL_ChampionList_h
#define counterPickLoL_ChampionList_h

#import "Foundation/Foundation.h"

@interface ChampionList : NSObject

@property (strong, nonatomic) NSArray *championNames;

- (void)initializeChampionNames:(NSMutableDictionary *) championList;

- (id) initWithJSON;

@end

#endif
