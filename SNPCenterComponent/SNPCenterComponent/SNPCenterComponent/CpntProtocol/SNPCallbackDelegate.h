//
//  SNPCallbackDelegate.h
//  SNPCenterComponent
//
//  Created by Sniper on 2019/1/14.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SNPCallbackDelegate <NSObject>

- (void)callbackWithDict:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
