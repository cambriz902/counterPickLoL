//
//  CounterSelectCell.h
//  counterPickLoL
//
//  Created by christian ambriz on 9/1/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol SearchBarReturnDelegate <NSObject>

@optional
-(void) didPressSearch:(NSString *)championName championImage:(NSString *)championImage;

@end

@interface CounterSelectCell : UICollectionReusableView <UISearchBarDelegate>


@property (strong, nonatomic) NSString *championInput;
@property (strong, nonatomic) NSArray *championList;
@property (weak, nonatomic) IBOutlet UISearchBar *selectChampionCounter;
@property (nonatomic, weak) id<SearchBarReturnDelegate> delegate;

-(void) initializeChampionList;
@end
