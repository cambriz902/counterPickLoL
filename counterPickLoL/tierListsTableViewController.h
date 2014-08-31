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
@property (strong, nonatomic) NSArray *competitiveTierList1;
@property (strong, nonatomic) NSArray *competitiveTierList2;
@property (strong, nonatomic) NSArray *competitiveTierList3;
@property (strong, nonatomic) NSArray *topTierList1;
@property (strong, nonatomic) NSArray *topTierList2;
@property (strong, nonatomic) NSArray *topTierList3;
@property (strong, nonatomic) NSArray *midTierList;
@property (strong, nonatomic) NSArray *midTierList1;
@property (strong, nonatomic) NSArray *midTierList2;
@property (strong, nonatomic) NSArray *midTierList3;
@property (strong, nonatomic) NSArray *jungleTierList1;
@property (strong, nonatomic) NSArray *jungleTierList2;
@property (strong, nonatomic) NSArray *jungleTierList3;
@property (strong, nonatomic) NSArray *supportTierList1;
@property (strong, nonatomic) NSArray *supportTierList2;
@property (strong, nonatomic) NSArray *supportTierList3;
@property (strong, nonatomic) NSArray *adcTierList1;
@property (strong, nonatomic) NSArray *adcTierList2;
@property (strong, nonatomic) NSArray *adcTierList3;

-(void) initializeSoloQueueTierLists;
-(void) initializeompetitiveTierLists;
-(void) initializeTopTierLists;
-(void) initializeMidTierLists;
-(void) initializeJungleTierLists;
-(void) initializeSupportTierLists;
-(void) initializeAdcTierLists;
@end
