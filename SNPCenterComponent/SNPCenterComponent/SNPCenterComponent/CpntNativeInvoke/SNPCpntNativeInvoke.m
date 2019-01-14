//
//  SNPCpntNativeInvoke.m
//  SNPCenterComponent
//
//  Created by Sniper on 2019/1/14.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import "SNPCpntNativeInvoke.h"

@interface SNPCpntNativeInvoke ()

/** callbackBlock */
@property (nonatomic, copy)void(^callbackBlock)(NSDictionary *cbDict);

@end

@implementation SNPCpntNativeInvoke

+ (instancetype)nativeInvokeWithCallbackBlock:(void (^)(NSDictionary * _Nonnull))callbackBlock {
    SNPCpntNativeInvoke *nativeInvoke = [[self alloc] init];
    return [nativeInvoke initWithCallback:callbackBlock];
}

- (instancetype)initWithCallback:(void (^)(NSDictionary * _Nonnull))callbackBlock {
    self = [super init];
    if (self) {
        self.callbackBlock = callbackBlock;
    }
    return self;
}

- (void)callbackWithDict:(NSDictionary *)dict {
    if (self.callbackBlock) {
        self.callbackBlock(dict);
    }
}

@end
