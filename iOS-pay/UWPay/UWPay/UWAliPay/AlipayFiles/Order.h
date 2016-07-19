//
//  Order.h
//  UWPay
//
//  Created by Fengur on 16/5/31.
//  Copyright © 2016年 onlybox. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Order : NSObject

@property (nonatomic, copy) NSString* partner;
@property (nonatomic, copy) NSString* seller;
@property (nonatomic, copy) NSString* tradeNO;
@property (nonatomic, copy) NSString* productName;
@property (nonatomic, copy) NSString* productDescription;
@property (nonatomic, copy) NSString* amount;
@property (nonatomic, copy) NSString* notifyURL;
@property (nonatomic, copy) NSString* service;
@property (nonatomic, copy) NSString* paymentType;
@property (nonatomic, copy) NSString* inputCharset;
@property (nonatomic, copy) NSString* itBPay;
@property (nonatomic, copy) NSString* showUrl;

// Optional
@property (nonatomic, copy) NSString* rsaDate;

// Optional
@property (nonatomic, copy) NSString* appID;

@property (nonatomic, readonly) NSMutableDictionary* extraParams;

+ (id)order;
@end
