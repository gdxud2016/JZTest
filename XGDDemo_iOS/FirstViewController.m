//
//  FirstViewController.m
//  XGDDemo
//
//  Created by xgd on 2022/2/16.
//

#import "FirstViewController.h"

NSString *name = @"zhangsan";

@interface FirstViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic, strong)UITableView *tableView;

@property(nonatomic, strong)NSArray<NSDictionary<NSString *,NSString *> *> *dataSources;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"First";
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:self.tableView];
    
    _dataSources = @[
        @{ @"title": @"AFNetworking练习", @"class": @"AFNetworkViewController"},
        @{ @"title": @"WKWebView拦截", @"class": @"WebViewLocalProtocolController"},
        @{ @"title": @"UIViewController生命周期", @"class": @"SecondViewController"},
    ];
    
    CGSize size = [UIScreen mainScreen].bounds.size;
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(size.width, 88), NO, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextAddRect(context, CGRectMake(0, 0, size.width, 88));
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    CGContextFillPath(context);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context);
    [UIImageJPEGRepresentation(image, 1.0) writeToFile:@"/Users/jingdata-10243/Desktop/XGDDemo/1.jpg" atomically:YES];
    
//    [self.navigationController.navigationBar setBackgroundImage:image forBarPosition:UIBarPositionTop barMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
}

-(void)viewDidLayoutSubviews{
    _tableView.frame = self.view.bounds;
}

-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.rowHeight = 50;
        _tableView.sectionHeaderHeight = 10;
    }
    return  _tableView;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return _dataSources.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: nil];
    cell.textLabel.text = _dataSources[indexPath.section][@"title"];
    return  cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *clsStr = _dataSources[indexPath.section][@"class"];
    Class cls = NSClassFromString(clsStr);
    UIViewController *vc = (UIViewController *)[[cls alloc] init];
    vc.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:vc animated: true];

}


@end
