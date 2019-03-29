//
//  SNPCpntNativeInvoke.h
//  SNPCenterComponent
//
//  Created by Sniper on 2019/1/14.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SNPCallbackDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface SNPCpntNativeInvoke : NSObject<SNPCallbackDelegate>

+ (instancetype)nativeInvokeWithCallbackBlock:(void(^)(NSString *code, NSString *msg, NSDictionary *data))callbackBlock;

@end

NS_ASSUME_NONNULL_END
