//
//  CounterSelectCell.m
//  counterPickLoL
//
//  Created by christian ambriz on 9/1/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import "CounterSelectCell.h"

@implementation CounterSelectCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [self.selectChampionCounter resignFirstResponder];
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField;
{
    self.selectChampionCounter.text = @"";
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
