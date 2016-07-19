//
//  UWAliPayHeader.h
//  UWPay
//
//  Created by Fengur on 16/5/31.
//  Copyright © 2016年 onlybox. All rights reserved.
//



#import <AlipaySDK/AlipaySDK.h>
#import "UWAliPayTool.h"
#import "Order.h"
#import "DataSigner.h"
#import <Foundation/Foundation.h>




#pragma mark -  Optionnal 支付方案为Plan_A 才会用到以下几个参数，一般为服务端处理 -- OrderString processed locality

#define kPartnerID @""


#define kSellerAccount @""


#define kNotifyURL @""


#define kPrivateKey @""



#pragma mark - Necessary param Plan_A 和 Plan_B 都需要配置
/**
 *  appScheme:应用注册scheme,在Info.plist定义URLtypes，处理支付宝回调
 */
#define kAppScheme @"UWPay"



