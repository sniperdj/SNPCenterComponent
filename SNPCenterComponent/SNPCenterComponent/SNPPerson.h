//
//  SNPPerson.h
//  SNPCenterComponent
//
//  Created by Sniper on 2019/1/13.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SNPPerson : NSObject

- (void)eat;

- (void)say:(NSString *)str;

- (NSInteger)sleepTime:(NSDictionary *)dict;

- (NSString *)getStr:(NSDictionary *)str;

- (NSString *)saySomething:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
