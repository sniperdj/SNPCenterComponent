//
//  NSObject+SNPInvoke.m
//  SNPCenterComponent
//
//  Created by Sniper on 2019/3/30.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import "NSObject+SNPInvoke.h"
#import "SNPCenterCpnt.h"
#import "SNPCenterConst.h"
#import "SNPCpntNativeInvoke.h"

@implementation NSObject (SNPInvoke)

- (void)nativeInvokeWithName:(NSString *)name params:(NSDictionary * _Nullable)params callback:(void(^)(NSString *code, NSString *msg, NSDictionary *data))callbackBlock {
    NSArray *seperateClassMethodList = [name componentsSeparatedByString:@"."];
    if (seperateClassMethodList == nil ||
        seperateClassMethodList.count != 2) {
        NSLog(@"调用格式不正确:%@", name);
        return;
    }
    
    NSString *target = [seperateClassMethodList firstObject];
    NSString *action = [seperateClassMethodList lastObject];
    
    if (!params) {
        params = [NSDictionary dictionary];
    }
    if (!callbackBlock) {
        [[SNPCenterCpnt center] performTarget:target actionName:action withParams:params];
    } else {
        SNPCpntNativeInvoke *callbackInvoke = [SNPCpntNativeInvoke nativeInvokeWithCallbackBlock:callbackBlock];
        NSMutableDictionary *ourParams = [params mutableCopy];
        [ourParams setObject:callbackInvoke forKey:cpmtInvokeKey];
        [[SNPCenterCpnt center] performTarget:target actionName:action withParams:ourParams callbackHandler:callbackInvoke];
    }
}

@end
