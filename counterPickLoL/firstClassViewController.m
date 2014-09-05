//
//  firstClassViewController.m
//  counterPickLoL
//
//  Created by christian ambriz on 8/28/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import "firstClassViewController.h"

@interface firstClassViewController ()
@property (weak, nonatomic) IBOutlet UIButton *tierListButton;
@property (weak, nonatomic) IBOutlet UIButton *counterPicksButton;
@property (weak, nonatomic) IBOutlet UIImageView *leagueOfLegendsLogo;

@end

@implementation firstClassViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor blackColor];
    self.leagueOfLegendsLogo.backgroundColor = [UIColor clearColor];
    
    [self.tierListButton setTitleColor:[UIColor colorWithRed:255/255.0 green:223/255.0 blue:99.0/255.0 alpha:1.0] forState:UIControlStateNormal];
    [self.counterPicksButton setTitleColor:[UIColor colorWithRed:255/255.0 green:223/255.0 blue:99.0/255.0 alpha:1.0] forState:UIControlStateNormal];
    self.title = @"Champion Select";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
