//
//  ViewController.m
//  Pong
//
//  Created by Michael Blum on 6/26/13.
//  Copyright (c) 2013 p3Tech. All rights reserved.
//

#import "PongViewController.h"

@interface PongViewController ()

@end

@implementation PongViewController

@synthesize optionsViewController, timer;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //config our nav controller
    timer = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(timerUpdate) userInfo: nil repeats:YES];
}

-(void)viewWillAppear:(BOOL)animated
{
    [self.navigationItem setTitle:@"Pong"];
    [self.navigationController.navigationBar setBarStyle: UIBarStyleBlack];
    [self.view setBackgroundColor:[UIColor blueColor]];
    UIBarButtonItem *optionsButton =
    [[UIBarButtonItem alloc]
     initWithTitle:@"Options"
     style: UIBarButtonItemStylePlain
     target:self action:@selector(switchToOptionsView:)];
    self.navigationItem.rightBarButtonItem = optionsButton;
}

-(IBAction)switchToOptionsView:(id)sender
{
    self.optionsViewController = [[UIViewController alloc] initWithNibName:@"OptionsViewController" bundle:nil];
    [self.navigationController pushViewController:self.optionsViewController animated:YES];
    [self.navigationItem setTitle:@"Options"];
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView: [self view]];
    NSLog(@"touch: %f %f", touchPoint.x, touchPoint.y);
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView: [self view]];
    NSLog(@"touch moved: %f %f", touchPoint.x, touchPoint.y);
}
-(void)timerUpdate{
    self.timerCount += 0.1;
    NSLog(@"%@", [NSString stringWithFormat:@"Time: %f", self.timerCount]);
    [self.timerLabel setText:[NSString stringWithFormat:@"Time: %f", self.timerCount]];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
