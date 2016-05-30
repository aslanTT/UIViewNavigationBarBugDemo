//
//  BaseViewController.m
//  ViewControllerPushDemo
//
//  Created by Aslan on 27/5/2016.
//  Copyright © 2016 ___com.iaslan__. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()<UIGestureRecognizerDelegate>

@property (nonatomic, strong) Class nextViewController;

@end

@implementation BaseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"DemoViewController";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *pushButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    pushButton.center = self.view.center;
    [pushButton setTitle:@"push" forState:UIControlStateNormal];
    [pushButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [pushButton setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [pushButton addTarget:self action:@selector(didClickPushButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
    
    if (self.navigationController &&
        self.parentViewController == self.navigationController &&
        self != [self.navigationController.viewControllers firstObject]) {
        if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
            self.navigationController.interactivePopGestureRecognizer.delegate = (id<UIGestureRecognizerDelegate>)self.navigationController;
        }
    }
}

- (void)resgisterPushClass:(Class)nextClass
{
    self.nextViewController = nextClass;
}

- (void)didClickPushButton:(id)sender
{
    if (self.nextViewController == nil) {
        self.nextViewController = [BaseViewController class];
    }
    UIViewController *nextViewController = [[self.nextViewController alloc] init];
    [self.navigationController pushViewController:nextViewController animated:YES];
}

@end
