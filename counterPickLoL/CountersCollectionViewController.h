//
//  CountersCollectionViewController.h
//  counterPickLoL
//
//  Created by christian ambriz on 9/1/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChampionsCounters.h"
#import "ChampionCounters.h"

@interface CountersCollectionViewController : UICollectionViewController

@property (strong, nonatomic) NSString *headerChampionImageName;
@property (strong, nonatomic) NSString *headerChampionLabelText;
@property (strong, nonatomic) NSMutableString *championToCounter;
@property (strong, nonatomic) ChampionsCounters *championsCounters;
@property (strong, nonatomic) ChampionCounters *championCounters;

-(void) initializeChampionStrongWeakCounters;

@end
