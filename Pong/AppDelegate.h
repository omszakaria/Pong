//
//  AppDelegate.h
//  Pong
//
//  Created by Michael Blum on 6/26/13.
//  Copyright (c) 2013 p3Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow* window;

@property (strong, nonatomic) ViewController* viewController;

@property (strong, nonatomic) ViewController* optionsViewController;

@property (strong, nonatomic) UINavigationController* navigationViewController;

@end
