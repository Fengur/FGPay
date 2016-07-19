//
//  ViewController.m
//  UWPay
//
//  Created by Fengur on 16/5/31.
//  Copyright © 2016年 onlybox. All rights reserved.
//

#import "ViewController.h"
#import "UWAliPayHeader.h"
#import "UWWxPayHeader.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor whiteColor];
    [self setUpPayItems];
    [super viewDidLoad];
}

- (void)setUpPayItems {
    UIButton *aliPay = [[UIButton alloc]
        initWithFrame:CGRectMake(60, 180, [UIScreen mainScreen].bounds.size.width - 120, 45)];
    [aliPay setTitle:@"支付宝支付" forState:UIControlStateNormal];
    aliPay.backgroundColor = [UIColor blackColor];
    aliPay.layer.cornerRadius = 10;
    [aliPay addTarget:self
                  action:@selector(aliPayAction)
        forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:aliPay];

    UIButton *weiChatPay = [[UIButton alloc]
        initWithFrame:CGRectMake(60, 250, [UIScreen mainScreen].bounds.size.width - 120, 45)];
    [weiChatPay setTitle:@"微信支付" forState:UIControlStateNormal];
    weiChatPay.backgroundColor = [UIColor blackColor];
    weiChatPay.layer.cornerRadius = 10;
    [weiChatPay addTarget:self
                   action:@selector(weiChatPayAction)
         forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:weiChatPay];
}

- (void)aliPayAction {
    [UWAliPayTool alipayWithOrderString:@"server response OrderString"];
    NSLog(@"aliPay Start");
}

- (void)weiChatPayAction {
    UWWxPayModel *wxPayModel = [UWWxPayModel new];
    // 应用时，wxPayModel值因从服务端取得
    [UWWxPayTool wxPayWithPayModel:wxPayModel];
    NSLog(@"weiChatPay Start");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
