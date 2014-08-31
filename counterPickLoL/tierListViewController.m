//
//  tierListViewController.m
//  counterPickLoL
//
//  Created by christian ambriz on 8/29/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import "tierListViewController.h"

@interface tierListViewController ()

@end

@implementation tierListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.Title = self.tierName;
    
    NSLog(@"image name = %@",self.tierList[0][@"imageName"]);
    for (NSDictionary *champion in self.tierList) {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage
                imageNamed:champion[@"imageName"]]];
        imageView.frame = CGRectMake(0,100,320,60);
        [self.view addSubview:imageView];
    }
                            
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
