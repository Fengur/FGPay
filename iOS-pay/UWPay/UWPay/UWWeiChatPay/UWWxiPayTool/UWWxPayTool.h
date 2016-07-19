//
//  UWWxPayTool.h
//  UWPay
//
//  Created by Fengur on 16/5/31.
//  Copyright © 2016年 onlybox. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UWWxPayModel;
@interface UWWxPayTool : NSObject

+ (void)wxPayWithPayModel:(UWWxPayModel *)payModel;

@end
