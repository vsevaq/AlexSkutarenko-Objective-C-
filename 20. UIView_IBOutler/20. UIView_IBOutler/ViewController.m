//
//  ViewController.m
//  20. UIView_IBOutler
//
//  Created by MacBook Pro on 3/21/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (CGFloat) randomFromZeroToOne {
    return (float)(arc4random() % 256) / 255;
}

- (UIColor*)randomColor {
    CGFloat r = [self randomFromZeroToOne];
    CGFloat g = [self randomFromZeroToOne];
    CGFloat b = [self randomFromZeroToOne];
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.f];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    //self.testView.backgroundColor = [self randomColor];
    
    for (UIView* v in self.testViews) {
        v.backgroundColor = [self randomColor];
    }
}

@end
