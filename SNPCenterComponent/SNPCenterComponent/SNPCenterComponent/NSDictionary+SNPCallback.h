//
//  NSDictionary+SNPCallback.h
//  SNPCenterComponent
//
//  Created by Sniper on 2019/3/30.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (SNPCallback)

- (void)callbackToDict:(NSDictionary *)dict code:(NSString *)code msg:(NSString *)msg data:(NSDictionary *)data;

@end

NS_ASSUME_NONNULL_END
