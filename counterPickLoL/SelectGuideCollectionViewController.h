//
//  SelectGuideCollectionViewController.h
//  counterPickLoL
//
//  Created by christian ambriz on 10/25/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CounterSelectCell.h"
#import "ChampionList.h"

@interface SelectGuideCollectionViewController : UICollectionViewController <UITextFieldDelegate>

@property (strong, nonatomic) NSArray *championList;
@property (weak, nonatomic) IBOutlet CounterSelectCell *championSearch;

@property (strong, nonatomic) ChampionList *champions;

-(void) initializeChampionList;

@end
