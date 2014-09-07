//
//  CounterSelectCell.h
//  counterPickLoL
//
//  Created by christian ambriz on 9/1/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CounterSelectCell : UICollectionReusableView <UISearchBarDelegate>


@property (strong, nonatomic) NSString *championInput;
@property (strong, nonatomic) NSArray *championList;
@property (weak, nonatomic) IBOutlet UISearchBar *selectChampionCounter;

-(void) initializeChampionList;
@end
