//
//  ViewController.m
//  FuckingGreatAdvice
//
//  Created by Dmitry Zudochkin on 3/24/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import "ViewController.h"
#import "Adviser.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    Adviser *adviser = [Adviser alloc];
    
	[self.advice setText:[adviser getRandomAdvice]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
