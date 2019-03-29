//
//  SNPCpntNativeInvoke.m
//  SNPCenterComponent
//
//  Created by Sniper on 2019/1/14.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import "SNPCpntNativeInvoke.h"
#import "SNPCenterConst.h"

@interface SNPCpntNativeInvoke ()

/** callbackBlock */
@property (nonatomic, copy)void(^callbackBlock)(NSString *code, NSString *msg, NSDictionary *data);

@end

@implementation SNPCpntNativeInvoke

+ (instancetype)nativeInvokeWithCallbackBlock:(void(^)(NSString *code, NSString *msg, NSDictionary *data))callbackBlock {
    SNPCpntNativeInvoke *nativeInvoke = [[self alloc] init];
    return [nativeInvoke initWithCallback:callbackBlock];
}

- (instancetype)initWithCallback:(void(^)(NSString *code, NSString *msg, NSDictionary *data))callbackBlock {
    self = [super init];
    if (self) {
        self.callbackBlock = callbackBlock;
    }
    return self;
}

- (void)callbackWithDict:(NSDictionary *)dict {
    if (self.callbackBlock) {
        NSString *code = dict[cpmtCodeKey];
        NSString *msg = dict[cpmtMsgKey];
        NSDictionary *data = dict[cpmtDataKey];
        self.callbackBlock(code, msg, data);
    }
}

@end
