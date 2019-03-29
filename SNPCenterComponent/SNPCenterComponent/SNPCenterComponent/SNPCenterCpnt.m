//
//  SNPCenterCpmt.m
//  SNPCenterComponent
//
//  Created by Sniper on 2019/1/13.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import "SNPCenterCpnt.h"
#import <objc/runtime.h>
#import "SNPCenterConst.h"

@interface SNPCenterCpnt ()

@property(nonatomic, strong)NSMutableDictionary *cache;

@end

@implementation SNPCenterCpnt

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static SNPCenterCpnt *center;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        center = [super allocWithZone:zone];
    });
    return center;
}

+ (instancetype)center {
    return [[self alloc] init];
}

- (id)performTarget:(NSString *)target actionName:(NSString *)action withParams:(NSDictionary *)params callbackHandler:(id<SNPCallbackDelegate>)callbackhandler {
    return [self performTarget:target actionName:action withParams:params];
}

- (id)performTarget:(NSString *)target actionName:(NSString *)action withParams:(NSDictionary * _Nullable )params {
    if (target == nil) {
        NSLog(@"target不能为空");
        return nil;
    }
    
    if (action == nil) {
        NSLog(@"action 不能为空");
        return nil;
    }
    
    Class cls = NSClassFromString(target);
    if (!cls) {
        NSLog(@"找不到target : %@", target);
        return nil;
    }
    NSObject *targetObj = [[cls alloc] init];
    
    if (params) { // 有参数
        action = [action stringByAppendingString:@":"];
    }
    
    SEL selector = NSSelectorFromString(action);
    if (![targetObj respondsToSelector:selector]) {
        NSLog(@"%@里找不到%@方法", target, action);
        return nil;
    }
    return [self sendMsgToTarget:targetObj withSelector:selector withParams:params];
}

- (id)sendMsgToTarget:(NSObject *)target withSelector:(SEL)selector withParams:(NSDictionary *)params {
    
    NSMethodSignature *methodSig = [target methodSignatureForSelector:selector];
    if (!methodSig) {
        return nil;
    }
    const char *retType = [methodSig methodReturnType];
    
    if (strcmp(retType, @encode(void)) == 0) { // 没有返回值
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
        [invocation setTarget:target];
        [invocation setSelector:selector];
        if (params) {
            [invocation setArgument:&params atIndex:2];
        }
        [invocation invoke];
        return nil;
    }
    
    if (strcmp(retType, @encode(NSInteger)) == 0 ||    // 返回值数字
        strcmp(retType, @encode(CGFloat))   == 0) {    // 浮点
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
        [invocation setTarget:target];
        [invocation setSelector:selector];
        if (params) {
            [invocation setArgument:&params atIndex:2];
        }
        [invocation invoke];
        NSInteger result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(BOOL)) == 0) {    // BOOL
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
        [invocation setTarget:target];
        [invocation setSelector:selector];
        if (params) {
            [invocation setArgument:&params atIndex:2];
        }
        [invocation invoke];
        BOOL result = false;
        [invocation getReturnValue:&result];
        return @(result);
    }
    _Pragma("clang diagnostic push")
    _Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"")
        return [target performSelector:selector withObject:params];
    _Pragma("clang diagnostic pop")
}

#pragma mark -
- (NSMutableDictionary *)cache {
    if (!_cache) {
        _cache = [NSMutableDictionary dictionary];
    }
    return _cache;
}

@end
