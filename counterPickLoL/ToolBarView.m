//
//  ToolBarView.m
//  counterPickLoL
//
//  Created by christian ambriz on 9/5/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import "ToolBarView.h"

@implementation ToolBarView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void) viewdidLoad
{
    self.backgroundColor = [UIColor darkGrayColor];
    NSLog(@"hello");
    
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
