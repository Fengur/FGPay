//
//  Order.m
//  UWPay
//
//  Created by Fengur on 16/5/31.
//  Copyright © 2016年 onlybox. All rights reserved.
//
//

#import "Order.h"

@implementation Order

+ (id)order {
    Order *order = [[Order alloc] init];
    return order;
}

- (NSString *)description {
    NSMutableString *discription = [NSMutableString string];
    if (self.partner) {
        [discription appendFormat:@"partner=\"%@\"", self.partner];
    }

    if (self.seller) {
        [discription appendFormat:@"&seller_id=\"%@\"", self.seller];
    }
    if (self.tradeNO) {
        [discription appendFormat:@"&out_trade_no=\"%@\"", self.tradeNO];
    }
    if (self.productName) {
        [discription appendFormat:@"&subject=\"%@\"", self.productName];
    }

    if (self.productDescription) {
        [discription appendFormat:@"&body=\"%@\"", self.productDescription];
    }
    if (self.amount) {
        [discription appendFormat:@"&total_fee=\"%@\"", self.amount];
    }
    if (self.notifyURL) {
        [discription appendFormat:@"&notify_url=\"%@\"", self.notifyURL];
    }

    if (self.service) {
        // mobile.securitypay.pay
        [discription appendFormat:@"&service=\"%@\"", self.service];
    }
    if (self.paymentType) {
        // 1
        [discription appendFormat:@"&payment_type=\"%@\"", self.paymentType];
    }

    if (self.inputCharset) {
        // UTF8
        [discription appendFormat:@"&_input_charset=\"%@\"", self.inputCharset];
    }
    if (self.itBPay) {
        // 30m
        [discription appendFormat:@"&it_b_pay=\"%@\"", self.itBPay];
    }
    if (self.showUrl) {
        // m.alipay.com
        [discription appendFormat:@"&show_url=\"%@\"", self.showUrl];
    }
    if (self.rsaDate) {
        [discription appendFormat:@"&sign_date=\"%@\"", self.rsaDate];
    }
    if (self.appID) {
        [discription appendFormat:@"&app_id=\"%@\"", self.appID];
    }
    for (NSString *key in [self.extraParams allKeys]) {
        [discription appendFormat:@"&%@=\"%@\"", key, [self.extraParams objectForKey:key]];
    }
    return discription;
}

@end
