//
//  ViewController.h
//  Pong
//
//  Created by Michael Blum on 6/26/13.
//  Copyright (c) 2013 p3Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PongViewController : UIViewController {}

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (readwrite, atomic) double timerCount;
@property (strong, atomic) NSTimer *timer;
@property (strong, nonatomic) UIViewController* optionsViewController;



-(IBAction)switchToOptionsView:(id)sender;
-(void) timerUpdate;

@end
