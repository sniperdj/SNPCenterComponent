//
//  SNPCenterCpmt+SNPCallback.m
//  SNPCenterComponent
//
//  Created by Sniper on 2019/1/13.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import "SNPCenterCpnt+SNPCallback.h"
#import "SNPCenterConst.h"

@implementation SNPCenterCpnt (SNPCallback)

- (void)callbackToDict:(NSDictionary *)dict withCode:(NSString *)code msg:(NSString *)msg data:(NSDictionary *)data {
    if (!dict) {
        NSLog(@"错误:callbacker不能为空!!");
    }
    id<SNPCallbackDelegate> callbackHandler = [dict objectForKey:cpmtInvokeKey];
    NSMutableDictionary *callbackDict = [NSMutableDictionary dictionary];
    callbackDict[cpmtCodeKey] = code;
    callbackDict[cpmtMsgKey] = msg;
    callbackDict[cpmtDataKey] = data;
    [callbackHandler callbackWithDict:callbackDict];
}

@end
