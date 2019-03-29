//
//  SNPPerson.m
//  SNPCenterComponent
//
//  Created by Sniper on 2019/1/13.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import "SNPPerson.h"
#import "SNPCenterComponent/NSDictionary+SNPCallback.h"

@implementation SNPPerson

- (NSString *)saySomething:(NSDictionary *)dict {
    NSLog(@"something");
    [dict callbackToDict:dict code:@"111" msg:@"msgmsg" data:@{@"sss":@"fff"}];
    return @"something";
}

- (void)dealloc {
    NSLog(@"dealloc %@", self);
}

@end
