//
//  BViewController.m
//  ViewControllerPushDemo
//
//  Created by Aslan on 27/5/2016.
//  Copyright © 2016 ___com.iaslan__. All rights reserved.
//

#import "BViewController.h"
#import "CViewController.h"

@implementation BViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"B";
    [self resgisterPushClass:[CViewController class]];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
}

@end
