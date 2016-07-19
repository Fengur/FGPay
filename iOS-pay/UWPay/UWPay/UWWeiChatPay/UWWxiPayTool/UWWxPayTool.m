//
//  UWWxPayTool.m
//  UWPay
//
//  Created by Fengur on 16/5/31.
//  Copyright © 2016年 onlybox. All rights reserved.
//

#import "UWWxPayTool.h"
#import "WXApi.h"
#import "UWWxPayModel.h"

@implementation UWWxPayTool

+ (void)wxPayWithPayModel:(UWWxPayModel *)payModel{
    PayReq *request = [[PayReq alloc] init];
    request.partnerId = payModel.partnerid;
    request.prepayId = payModel.prepayid;
    request.package = payModel.package;
    request.nonceStr = payModel.noncestr;
    request.timeStamp = payModel.timestamp;
    request.sign = payModel.sign;
    [WXApi sendReq:request];
}
@end
