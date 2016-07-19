//
//  AppDelegate.m
//  UWPay
//
//  Created by Fengur on 16/5/31.
//  Copyright © 2016年 onlybox. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

#import "UWAlipayHeader.h"
#import "UWWxPayHeader.h"

@interface AppDelegate ()<WXApiDelegate>

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _window.backgroundColor = [UIColor whiteColor];
    [_window makeKeyAndVisible];
    ViewController *rootVC = [ViewController new];
    _window.rootViewController = rootVC;
    [WXApi registerApp:WeiChatAppID];
    return YES;
}

#pragma mark - AlipayCallBack

- (void)aliPayCallBackWithUrl:(NSURL *)url {
    if ([url.host isEqualToString:@"safepay"]) {
        [[AlipaySDK defaultService]
            processOrderWithPaymentResult:url
                          standbyCallback:^(NSDictionary *resultDic) {
                              NSLog(@"do what you want with result --\n resullt %@", resultDic);
                          }];
    }

    if ([url.host isEqualToString:@"platformapi"]) {
        [[AlipaySDK defaultService]
            processAuthResult:url
              standbyCallback:^(NSDictionary *resultDic) {
                  NSLog(@"do what you want with result --\n result %@", resultDic);
              }];
    }
}


#pragma mark - iOS9.0及以上会在这个方法执行微信回调，之前的方法被舍弃

- (BOOL)application:(UIApplication *)app
            openURL:(NSURL *)url
            options:(NSDictionary<NSString *, id> *)options {
    [self aliPayCallBackWithUrl:url];
    [WXApi handleOpenURL:url delegate:self];
    return YES;
}

#pragma mark - iOS9.0之前会进入这个方法执行回调

- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation {
    [self aliPayCallBackWithUrl:url];
    [WXApi handleOpenURL:url delegate:self];
    return YES;
}



- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    return [WXApi handleOpenURL:url delegate:self];
}

#pragma mark - WeiChatPayCallBack

- (void)onResp:(BaseResp *)resp {
    if ([resp.class isSubclassOfClass:[PayResp class]]) {
        PayResp *response = (PayResp *)resp;
        //根据不同状态做出不同处理
        switch (response.errCode) {
            case WXSuccess: {
            } break;
            case WXErrCodeUserCancel: {
            } break;
            case WXErrCodeSentFail: {
            } break;
            default:
                break;
        }
    }
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
