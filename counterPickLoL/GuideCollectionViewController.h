//
//  GuideCollectionViewController.h
//  counterPickLoL
//
//  Created by christian ambriz on 10/26/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GuideCollectionViewController : UICollectionViewController

@property (strong, nonatomic) NSString *headerChampionImageName;
@property (strong, nonatomic) NSString *headerChampionLabelText;
@property (strong, nonatomic) NSDictionary *startingItems;
@property (strong, nonatomic) NSDictionary *coreItems;
@property (strong, nonatomic) NSMutableString *championGuide;

-(void) initializeStartingItems;
-(void) initializeCoreItems;

@end
