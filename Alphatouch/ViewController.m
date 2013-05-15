//
//  ViewController.m
//  Alphatouch
//
//  Created by Luis on 5/14/13.
//  Copyright (c) 2013 Luis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Setting bg color");
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    firstButton.frame = CGRectMake(100, 100, 100, 44);
    [firstButton setTitle:@"Click me!" forState:UIControlStateNormal];
    [self.view addSubview:firstButton];
    
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(50,30,200,44)];
    firstLabel.backgroundColor = [UIColor clearColor];
    firstLabel.text = @"Hello, welcome to my app!";
    [self.view addSubview:firstLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView
{
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    self.view = view;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Started touching the screen");
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Touch Ended");
}

@end
