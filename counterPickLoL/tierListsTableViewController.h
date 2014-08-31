//
//  tierListsTableViewController.h
//  counterPickLoL
//
//  Created by christian ambriz on 8/28/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tierListsTableViewController : UITableViewController

@property (strong, nonatomic) NSArray *differentTierLists;
@property (strong, nonatomic) NSArray *soloQueueTierList1;
@property (strong, nonatomic) NSArray *soloQueueTierList2;
@property (strong, nonatomic) NSArray *soloQueueTierList3;
@property (strong, nonatomic) NSArray *competitiveTierList;
@property (strong, nonatomic) NSArray *topTierList;
@property (strong, nonatomic) NSArray *midTierList;
@property (strong, nonatomic) NSArray *jungleTierList;
@property (strong, nonatomic) NSArray *supportTierList;
@property (strong, nonatomic) NSArray *adcTierList;

-(void) initializeSoloQueueTierLists;
-(void) initializeompetitiveTierLists;
@end
