//
//  SNPCenterCpmt+SNPInvocation.m
//  SNPCenterComponent
//
//  Created by Sniper on 2019/1/13.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import "SNPCenterCpmt+SNPInvocation.h"
#import "SNPCenterCpmt.h"

@implementation SNPCenterCpmt (SNPInvocation)

- (void)invokeWithName:(NSString *)name params:(NSDictionary *)params {
    NSArray *seperateClassMethodList = [name componentsSeparatedByString:@"."];
    if (seperateClassMethodList == nil ||
        seperateClassMethodList.count != 2) {
        NSLog(@"调用格式不正确:%@", name);
        return;
    }
    
    NSString *target = [seperateClassMethodList firstObject];
    NSString *action = [seperateClassMethodList lastObject];
    
//    NSMutableDictionary *theParams = [NSMutableDictionary dictionary];
//    theParams[@"caller"] = nil;
//    theParams[@"realParams"] = params;
    
    [[SNPCenterCpmt center] performTarget:target actionName:action withParams:params];
}

@end
