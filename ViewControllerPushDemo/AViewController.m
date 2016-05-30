//
//  AViewController.m
//  ViewControllerPushDemo
//
//  Created by Aslan on 27/5/2016.
//  Copyright © 2016 ___com.iaslan__. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"A";
    [self resgisterPushClass:[BViewController class]];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

@end
