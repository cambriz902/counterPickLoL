//
//  CounterHeaderCell.h
//  counterPickLoL
//
//  Created by christian ambriz on 9/1/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CounterHeaderCell : UICollectionReusableView

@property (weak, nonatomic) IBOutlet UIImageView *counterChampionImage;
@property (weak, nonatomic) IBOutlet UILabel *counterChampionLabel;

@end
