//
//  SNPCenterCpmt+SNPInvocation.m
//  SNPCenterComponent
//
//  Created by Sniper on 2019/1/13.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import "SNPCenterCpnt+SNPInvocation.h"
#import "SNPCenterCpnt.h"
#import "SNPCenterConst.h"
#import "SNPCpntNativeInvoke.h"

@implementation SNPCenterCpnt (SNPInvocation)

- (void)nativeInvokeWithName:(NSString *)name params:(NSDictionary *)params callback:(void(^)(NSDictionary *cbDict))callbackBlock {
    NSArray *seperateClassMethodList = [name componentsSeparatedByString:@"."];
    if (seperateClassMethodList == nil ||
        seperateClassMethodList.count != 2) {
        NSLog(@"调用格式不正确:%@", name);
        return;
    }
    
    NSString *target = [seperateClassMethodList firstObject];
    NSString *action = [seperateClassMethodList lastObject];
    
    if (!callbackBlock) {
        [[SNPCenterCpnt center] performTarget:target actionName:action withParams:params];
    } else {
        SNPCpntNativeInvoke *callbackInvoke = [SNPCpntNativeInvoke nativeInvokeWithCallbackBlock:callbackBlock];
        [[SNPCenterCpnt center] performTarget:target actionName:action withParams:params callbackHandler:callbackInvoke];
    }
}

@end
