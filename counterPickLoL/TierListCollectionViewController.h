//
//  TierListCollectionViewController.h
//  counterPickLoL
//
//  Created by christian ambriz on 8/30/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TierListCollectionViewController : UICollectionViewController

@property (strong, nonatomic) NSArray *tier1;
@property (strong, nonatomic) NSArray *tier2;
@property (strong, nonatomic) NSArray *tier3;
@property (strong, nonatomic) NSString *tierName;

@end
