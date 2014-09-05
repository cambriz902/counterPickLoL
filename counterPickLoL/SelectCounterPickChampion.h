//
//  SelectCounterPickChampion.h
//  counterPickLoL
//
//  Created by christian ambriz on 8/31/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CounterSelectCell.h"

@interface SelectCounterPickChampion : UICollectionViewController <UITextFieldDelegate>

@property (strong, nonatomic) NSArray *championList;
@property (weak, nonatomic) IBOutlet CounterSelectCell *championSearch;

-(void) initializeChampionList;


@end
