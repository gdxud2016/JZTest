//
//  ThirdViewController.m
//  XGDDemo
//
//  Created by xgd on 2022/2/25.
//

#import "ThirdViewController.h"
#import "AFNetworkViewController.h"
#import "SecondViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"Third";
}

static int i = 0;
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    i ++;
    NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *vcs = [NSMutableArray array];
    UITabBarController *tabBarVC = self.tabBarController;
    [items addObject: [[UITabBarItem alloc] initWithTitle: @"First" image:nil selectedImage:nil]];
    [vcs addObject:tabBarVC.viewControllers[0]];
    
    
    UIViewController *vc;
    if (i % 2 != 0) {
        vc = [AFNetworkViewController new];
        vc.view.backgroundColor = [UIColor whiteColor];
        vc.title = @"AF1";
        vc.tabBarItem.title = @"AF2";
    } else {
        vc = [SecondViewController new];
        vc.view.backgroundColor = [UIColor whiteColor];
        vc.title = @"Second1";
        vc.tabBarItem.title = @"Second2";
    }
    [vcs addObject: [[UINavigationController alloc] initWithRootViewController: vc]];
    
//    [items addObject: [[UITabBarItem alloc] initWithTitle: @"Third" image:nil selectedImage:nil]];
    [vcs addObject:tabBarVC.viewControllers[2]];
    
    [tabBarVC setViewControllers:vcs animated: NO];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
