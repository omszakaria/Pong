//
//  AppDelegate.h
//  Pong
//
//  Created by Michael Blum on 6/26/13.
//  Copyright (c) 2013 p3Tech. All rights reserved.
//


#import <UIKit/UIKit.h>

@class PongViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow* window;

@property (strong, nonatomic) PongViewController* viewController;

@property (strong, nonatomic) UINavigationController* navigationViewController;

@end
