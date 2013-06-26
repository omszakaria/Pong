//
//  ViewController.m
//  Pong
//
//  Created by Michael Blum on 6/26/13.
//  Copyright (c) 2013 p3Tech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //config our nav controller
    [self.navigationItem setTitle:@"Pong"];
    [self.navigationController.navigationBar setBarStyle: UIBarStyleBlack];
    [self.view setBackgroundColor:[UIColor darkGrayColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
