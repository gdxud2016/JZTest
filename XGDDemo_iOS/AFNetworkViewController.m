//
//  AFNetworkViewController.m
//  XGDDemo
//
//  Created by xgd on 2022/2/16.
//

#import "AFNetworkViewController.h"
#import "AFHTTPRequestOperationManager.h"

@interface AFNetworkViewController ()

@end

@implementation AFNetworkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"AFNetworking";
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.completionQueue = dispatch_queue_create("label", DISPATCH_QUEUE_CONCURRENT);
    manager.completionGroup = dispatch_group_create();
    [manager GET:@"http://rap2api.taobao.org/app/mock/298043/channels" parameters:nil success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        NSLog(@"回调线程：%@", [NSThread currentThread]);
        NSLog(@"%@",responseObject);
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
    
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
