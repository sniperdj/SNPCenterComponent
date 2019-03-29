//
//  NSObject+SNPInvoke.h
//  SNPCenterComponent
//
//  Created by Sniper on 2019/3/30.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (SNPInvoke)

- (void)nativeInvokeWithName:(NSString *)name params:(NSDictionary * _Nullable)params callback:(void(^)(NSString *code, NSString *msg, NSDictionary *data))callbackBlock;

@end

NS_ASSUME_NONNULL_END
