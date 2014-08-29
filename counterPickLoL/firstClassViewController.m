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
    
    self.tierListButton.backgroundColor = [UIColor grayColor];
    [self.tierListButton setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    self.counterPicksButton.backgroundColor = [UIColor grayColor];
    [self.counterPicksButton setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:NO];
}

@end
