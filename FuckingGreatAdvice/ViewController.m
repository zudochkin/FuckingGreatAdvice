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
@property (nonatomic, strong) Adviser *adviser;
@end

@implementation ViewController

@synthesize adviser = _adviser;

- (Adviser *)adviser
{
    if (!_adviser) _adviser = [Adviser alloc];
    
    return _adviser;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

	[self.advice setText:[self.adviser getRandomAdvice]];
}
- (IBAction)getMore:(id)sender {
    [self.advice setText:[self.adviser getRandomAdvice]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
