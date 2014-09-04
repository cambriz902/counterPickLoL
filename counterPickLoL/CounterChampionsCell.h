//
//  CounterChampionsCell.h
//  counterPickLoL
//
//  Created by christian ambriz on 9/2/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CounterChampionsCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *counterType;
@property (weak, nonatomic) IBOutlet UIImageView *counterImageOne;
@property (weak, nonatomic) IBOutlet UIImageView *counterImageTwo;
@property (weak, nonatomic) IBOutlet UIImageView *counterImageThree;
@property (weak, nonatomic) IBOutlet UIImageView *counterImageFour;
@property (weak, nonatomic) IBOutlet UIImageView *counterImageFive;
@property (weak, nonatomic) IBOutlet UILabel *counterLabelOne;
@property (weak, nonatomic) IBOutlet UILabel *counterLabelTwo;
@property (weak, nonatomic) IBOutlet UILabel *counterLabelThree;
@property (weak, nonatomic) IBOutlet UILabel *counterLabelFour;
@property (weak, nonatomic) IBOutlet UILabel *counterLabelFive;

@end
