//
//  LifeCycleController.m
//  XGDDemo
//
//  Created by xgd on 2022/4/1.
//

#import "LifeCycleController.h"

@interface LifeCycleController ()

@end

@implementation LifeCycleController

- (instancetype)init{
    NSLog(@"LifeCycleController init");
    return [super init];
}

- (instancetype)initWithCoder:(NSCoder *)coder{
    NSLog(@"LifeCycleController initWithCoder");
    return [super initWithCoder:coder];
}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    NSLog(@"LifeCycleController initWithNibName");
    return [super initWithNibName:nibNameOrNil bundle: nibBundleOrNil];
}

-(void)loadView{
    NSLog(@"LifeCycleController loadView");
    self.view = [UIView new];
}

- (void)viewDidLoad {
    FUNC_LOG
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"LifeCycle";
}

-(void)viewWillAppear:(BOOL)animated{
    FUNC_LOG
    [super viewWillAppear:animated];
}

-(void)viewDidAppear:(BOOL)animated{
    FUNC_LOG
    [super viewDidAppear:animated];
}

-(void)viewWillLayoutSubviews{
    FUNC_LOG
    [super viewWillLayoutSubviews];
}

-(void)viewDidLayoutSubviews{
    FUNC_LOG
    [super viewDidLayoutSubviews];
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
