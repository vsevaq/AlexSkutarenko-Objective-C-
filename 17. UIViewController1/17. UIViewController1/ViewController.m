//
//  ViewController.m
//  17. UIViewController1
//
//  Created by MacBook Pro on 2/26/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    [super loadView];
    
    NSLog(@"loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor greenColor];
    
    NSLog(@"viewDidLoad");
}

// Called when the view is about to made visible. Default does nothing
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    NSLog(@"viewWillAppear");
}

// Called when the view has been fully transitioned onto the screen. Default does nothing
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    NSLog(@"viewDidAppear");
}

//когда view уже appear и этот метод перерисовывает view
- (void)viewWillLayoutSubview {
    [super viewWillLayoutSubviews];
    
    NSLog(@"viewWillLayoutSubview");
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    NSLog(@"viewDidLayoutSubviews");
}

#pragma mark - Orientation
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    
}

- (BOOL)shouldAutorotate {
    return NO;
}

- (NSUInteger)supportInterfaceOrientations {
    return UIInterfaceOrientationMaskPortraitUpsideDown | UIInterfaceOrientationMaskPortrait;
}

@end
