//
//  SNPCenterCpmt+SNPCallback.h
//  SNPCenterComponent
//
//  Created by Sniper on 2019/1/13.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import "SNPCenterCpnt.h"

NS_ASSUME_NONNULL_BEGIN

@interface SNPCenterCpnt (SNPCallback)

- (void)callbackToDict:(NSDictionary *)dict withCode:(NSString *)code msg:(NSString *)msg data:(NSDictionary *)data;

@end

NS_ASSUME_NONNULL_END
