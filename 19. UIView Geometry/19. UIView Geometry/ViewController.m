//
//  ViewController.m
//  19. UIView Geometry
//
//  Created by MacBook Pro on 2/26/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) UIView* testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView* view1 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    view1.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.8];
    [self.view addSubview:view1];
    
    UIView* view2 = [[UIView alloc] initWithFrame:CGRectMake(80, 80, 50, 250)];
    view2.backgroundColor = [[UIColor greenColor] colorWithAlphaComponent:0.8];
    view2.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:view2];
    
    self.testView = view2;
    
    [self.view bringSubviewToFront:view1];
}

- (NSUInteger)supportedInterfaceOrientation {
    return UIInterfaceOrientationMaskAll;
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation{
    NSLog(@"\nframe: %@\nbounds: %@", NSStringFromCGRect(self.testView.frame), NSStringFromCGRect(self.testView.bounds));
    
    CGPoint origin = CGPointZero;
    origin = [self.view convertPoint:origin toView:self.view.window];
    NSLog(@"origin: %@", NSStringFromCGPoint(origin));
    
}

@end
