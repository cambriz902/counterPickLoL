//
//  CountersCollectionViewController.h
//  counterPickLoL
//
//  Created by christian ambriz on 9/1/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountersCollectionViewController : UICollectionViewController

@property (strong, nonatomic) NSString *headerChampionImageName;
@property (strong, nonatomic) NSString *headerChampionLabelText;
@property (strong, nonatomic) NSDictionary *championStrongAgainst;
@property (strong, nonatomic) NSDictionary *championWeakAgainst;

-(void) initializeChampionStrongAgainst;
-(void) initializeChampionWeakAgainst;

@end
