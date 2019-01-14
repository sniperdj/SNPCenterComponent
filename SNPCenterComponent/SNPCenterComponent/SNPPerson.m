//
//  SNPPerson.m
//  SNPCenterComponent
//
//  Created by Sniper on 2019/1/13.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import "SNPPerson.h"
#import "SNPCenterComponent/SNPCenterCpnt+SNPCallback.h"

@implementation SNPPerson

- (void)eat {
    NSLog(@"eating");
}

- (void)say:(NSString *)str {
    NSLog(@"%@", str);
}

- (NSInteger)sleepTime:(NSDictionary *)dict {
    NSLog(@"sleetTime return 8");
    return 8;
}

- (NSString *)getStr:(NSDictionary *)str {
    NSLog(@"get str : %@", [str objectForKey:@"a"]);
    return [str objectForKey:@"a"];
}

- (NSString *)saySomething {
    NSLog(@"something");
    [[SNPCenterCpnt center] callbackToDict:nil withCode:@"111" msg:@"msgmsg" data:@{@"sss":@"fff"}];
    return @"something";
}

@end
