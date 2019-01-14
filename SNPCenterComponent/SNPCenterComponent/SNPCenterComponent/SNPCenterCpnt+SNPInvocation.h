//
//  SNPCenterCpmt+SNPInvocation.h
//  SNPCenterComponent
//
//  Created by Sniper on 2019/1/13.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import "SNPCenterCpnt.h"

NS_ASSUME_NONNULL_BEGIN

@interface SNPCenterCpnt (SNPInvocation)

- (void)nativeInvokeWithName:(NSString *)name params:(NSDictionary *)params callback:(void(^)(NSDictionary *cbDict))callbackBlock;

@end

NS_ASSUME_NONNULL_END
