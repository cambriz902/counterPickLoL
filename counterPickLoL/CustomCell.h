//
//  customCell.h
//  counterPickLoL
//
//  Created by christian ambriz on 8/29/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *championNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *championPictureImageView;

@end
