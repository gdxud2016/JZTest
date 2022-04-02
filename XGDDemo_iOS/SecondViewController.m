//
//  SecondViewController.m
//  XGDDemo
//
//  Created by xgd on 2022/2/25.
//

#import "SecondViewController.h"
#import "LifeCycleController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.navigationController pushViewController:[LifeCycleController new] animated:true];
    
//    UIStoryboard *board = [UIStoryboard storyboardWithName: @"Main" bundle:nil];
//    UIViewController *vc = [board instantiateViewControllerWithIdentifier: @"LifeCycleVC"];
//    [self.navigationController pushViewController:vc animated: true];
}

-(void)viewWillDisappear:(BOOL)animated{
    FUNC_LOG
    [super viewWillDisappear:animated];
}

-(void)viewDidDisappear:(BOOL)animated{
    FUNC_LOG
    [super viewDidDisappear:animated];
}

@end
