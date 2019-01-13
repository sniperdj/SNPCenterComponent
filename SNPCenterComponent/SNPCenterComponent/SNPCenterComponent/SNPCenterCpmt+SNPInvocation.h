//
//  SNPCenterCpmt+SNPInvocation.h
//  SNPCenterComponent
//
//  Created by Sniper on 2019/1/13.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import "SNPCenterCpmt.h"

NS_ASSUME_NONNULL_BEGIN

@interface SNPCenterCpmt (SNPInvocation)

- (void)invokeWithName:(NSString *)name params:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
