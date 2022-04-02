//
//  JZBaseViewController.m
//  XGDDemo
//
//  Created by xgd on 2022/2/16.
//

#import "JZBaseViewController.h"

@interface JZBaseViewController ()

@end

@implementation JZBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    UIView * view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
//    view1.backgroundColor = [UIColor redColor];
//    [view1 addConstraint: [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:2.0 constant:50]];
//    [view1 addConstraint: [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:100]];
//
//    [self.view addSubview:view1];
}



-(void)dealloc{
    NSLog(@"%@ did dealloc", NSStringFromClass(self.class));
}

@end
