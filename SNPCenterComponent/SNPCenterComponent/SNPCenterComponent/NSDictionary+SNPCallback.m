//
//  NSDictionary+SNPCallback.m
//  SNPCenterComponent
//
//  Created by Sniper on 2019/3/30.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import "NSDictionary+SNPCallback.h"
#import "SNPCenterCpnt.h"

@implementation NSDictionary (SNPCallback)

- (void)callbackToDict:(NSDictionary *)dict code:(NSString *)code msg:(NSString *)msg data:(NSDictionary *)data {
    [[SNPCenterCpnt center] callbackToDict:dict withCode:code msg:msg data:data];
}

@end
