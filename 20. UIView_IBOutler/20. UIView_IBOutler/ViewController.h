//
//  ViewController.h
//  20. UIView_IBOutler
//
//  Created by MacBook Pro on 3/21/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//@property (weak, nonatomic) IBOutlet UIView* testView;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *testViews;

@end

