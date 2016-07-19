//
//  UWAliPayTool.h
//  UWPay
//
//  Created by Fengur on 16/5/31.
//  Copyright © 2016年 onlybox. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UWAliPayHeader.h"

@interface UWAliPayTool : NSObject


#pragma mark - Plan_A - 本地配置OrderString 然后支付，较繁琐，使用情况少

/**
 *  配置请求信息，仅有变化且必要的参数，然后进入支付环节
 *
 *  @param partner            合作者身份ID
 *  @param seller             卖家支付宝账号
 *  @param tradeNO            商户网站唯一订单号
 *  @param productName        商品名称
 *  @param productDescription 商品详情
 *  @param amount             总金额
 *  @param notifyURL          服务器异步通知页面路径
 *  @param itBPay             未付款交易的超时时间
 */
+ (void)alipayWithPartner:(NSString *)partner
                   seller:(NSString *)seller
                  tradeNO:(NSString *)tradeNO
              productName:(NSString *)productName
       productDescription:(NSString *)productDescription
                   amount:(NSString *)amount
                notifyURL:(NSString *)notifyURL
                   itBPay:(NSString *)itBPay;


#pragma mark - Plan_B - 服务端拼接 OrderString，本地直接调用，常用、安全性高。

/**
 *  直接进入支付环节
 *
 *  @param orderString <#orderString description#>
 */
+ (void)alipayWithOrderString:(NSString *)orderString;

@end



#pragma mark - Plan_A 需配置

/**
 *  支付宝的一些参数的生成
 */
@interface AlipayToolKit : NSObject

+ (NSString *)genTradeNoWithTime;


@end
