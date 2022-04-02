//
//  WebViewLocalProtocolController.m
//  XGDDemo
//
//  Created by xgd on 2022/3/7.
//

#import "WebViewLocalProtocolController.h"
#import <WebKit/WKWebView.h>

@interface WebViewLocalProtocolController()
@property(nonatomic,strong) WKWebView *webView;

@end

@implementation WebViewLocalProtocolController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.webView];
    
    [self.webView loadRequest: [[NSURLRequest alloc] initWithURL: [NSURL URLWithString:@"https://rong.jingdata.com/m/#/jingdataService/finance/public?channel=baoguang"]]];
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    self.webView.frame = self.view.bounds;
}

- (WKWebView *)webView{
    if (!_webView) {
        _webView = [[WKWebView alloc] initWithFrame:CGRectZero];
    }
    return  _webView;
}

@end
