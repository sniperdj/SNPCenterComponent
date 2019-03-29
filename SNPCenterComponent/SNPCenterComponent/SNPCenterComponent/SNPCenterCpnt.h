//
//  SNPCenterCpmt.h
//  SNPCenterComponent
//
//  Created by Sniper on 2019/1/13.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SNPCallbackDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface SNPCenterCpnt : NSObject

+ (instancetype)center;

/** 不对外开放 */
- (id)performTarget:(NSString *)target actionName:(NSString *)action withParams:(NSDictionary * _Nullable )params;

- (id)performTarget:(NSString *)target actionName:(NSString *)action withParams:(NSDictionary * _Nullable )params callbackHandler:(id<SNPCallbackDelegate>)callbackhandler;

- (void)callbackToDict:(NSDictionary *)dict withCode:(NSString *)code msg:(NSString *)msg data:(NSDictionary *)data;

@end

NS_ASSUME_NONNULL_END
