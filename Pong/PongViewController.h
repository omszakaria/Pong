//
//  ViewController.h
//  Pong
//
//  Created by Michael Blum on 6/26/13.
//  Copyright (c) 2013 p3Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PongViewController : UIViewController

@property (strong, nonatomic) UIViewController* optionsViewController;

-(IBAction)switchToOptionsView:(id)sender;


@end
