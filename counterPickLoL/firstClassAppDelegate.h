//
//  firstClassAppDelegate.h
//  counterPickLoL
//
//  Created by christian ambriz on 8/28/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "firstClassViewController.h"

@interface firstClassAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

@property (strong, nonatomic) UINavigationController *navigationController;
@end
