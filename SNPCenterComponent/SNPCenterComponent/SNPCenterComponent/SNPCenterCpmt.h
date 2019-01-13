//
//  SNPCenterCpmt.h
//  SNPCenterComponent
//
//  Created by Sniper on 2019/1/13.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SNPCenterCpmt : NSObject

+ (instancetype)center;

- (id)performTarget:(NSString *)target actionName:(NSString *)action withParams:(NSDictionary * _Nullable )params;

@end

NS_ASSUME_NONNULL_END
