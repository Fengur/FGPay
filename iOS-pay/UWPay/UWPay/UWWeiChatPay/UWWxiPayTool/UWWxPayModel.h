//
//  UWWxPayModel.h
//  UWPay
//
//  Created by Fengur on 16/5/31.
//  Copyright © 2016年 onlybox. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UWWxPayModel : NSObject
/**
 *  APPID
 */
@property (nonatomic, copy) NSString *appid;
/**
 *  随机字符串
 */
@property (nonatomic, copy) NSString *noncestr;
/**
 *  扩展字段(暂填写固定值Sign=WXPay)
 */
@property (nonatomic, copy) NSString *package;
/**
 *  商户号
 */
@property (nonatomic, copy) NSString *partnerid;
/**
 *  预支付交易会话ID
 */
@property (nonatomic, copy) NSString *prepayid;
/**
 *  时间戳
 */
@property (nonatomic, copy) NSString *sign;
/**
 *  签名
 */
@property (nonatomic, assign) int timestamp;
@end
