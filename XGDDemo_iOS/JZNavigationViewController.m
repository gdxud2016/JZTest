//
//  JZNavigationViewController.m
//  XGDDemo
//
//  Created by xgd on 2022/2/16.
//

#import "JZNavigationViewController.h"

@interface JZNavigationViewController ()<UINavigationControllerDelegate>

@end

@implementation JZNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.delegate = self;
   
    UINavigationBarAppearance *appperance = [[UINavigationBarAppearance alloc] init];
            //添加背景色
    appperance.backgroundColor = [UIColor orangeColor];
    appperance.shadowImage = [[UIImage alloc]init];
    appperance.shadowColor = nil;
            //设置字体颜色大小
    [appperance setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor whiteColor],NSFontAttributeName: [UIFont systemFontOfSize: 18]}];
    self.navigationBar.standardAppearance = appperance;
    self.navigationBar.scrollEdgeAppearance = appperance;
    self.navigationBar.compactAppearance = appperance;
    self.navigationBar.compactScrollEdgeAppearance = appperance;
}


- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if ([[self viewControllers] count] > 1){
        [[self tabBarController].tabBar setHidden: YES];
    } else {
        [[self tabBarController].tabBar setHidden: NO];
    }
}

-(void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if ([[self viewControllers] count] > 1){
        [[self tabBarController].tabBar setHidden: YES];
    } else {
        [[self tabBarController].tabBar setHidden: NO];
    }
}
@end
