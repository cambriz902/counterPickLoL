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


- (void) viewDidLoad
{
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"input = %@", @"hi");
    self.selectChampionCounter.text = @"yolo";
    [self.selectChampionCounter resignFirstResponder];
    return YES;
}


- (void)textFieldDidBeginEditing:(UITextField *)textField;
{

}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range
                                                    replacementString:(NSString *)string {
    return YES;
}


@end
