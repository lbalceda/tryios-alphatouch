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

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *greenButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    greenButton.frame = CGRectMake(120, 200, 100, 44);
    [greenButton setTitle:@"Make green!" forState:UIControlStateNormal];
    [greenButton addTarget:self action:@selector(changeBackgroundColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:greenButton];
    
    UIButton *blueButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    blueButton.frame = CGRectMake(120, 100, 100, 44);
    [blueButton setTitle:@"Make blue!" forState:UIControlStateNormal];
    [blueButton addTarget:self action:@selector(changeBackgroundColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:blueButton];
}

- (void) changeBackgroundColor:(UIButton *) sender
{
    if ([sender.titleLabel.text isEqualToString:@"Make green!"]){
        self.view.backgroundColor = [UIColor greenColor];
    } else {
        self.view.backgroundColor = [UIColor blueColor];
    }
}
@end

