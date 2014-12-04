//
//  SelectCounterPickChampion.h
//  counterPickLoL
//
//  Created by christian ambriz on 8/31/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CounterSelectCell.h"
#import "ChampionList.h"

@interface SelectCounterPickChampion : UICollectionViewController <UITextFieldDelegate>


@property (strong, nonatomic) NSArray *championNames;
@property (weak, nonatomic) IBOutlet CounterSelectCell *championSearch;
@property (strong, nonatomic) ChampionList *champions;

-(void) initializeChampionList;

@end
