//
//  ViewController.m
//  SNPCenterComponent
//
//  Created by Sniper on 2019/1/13.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import "ViewController.h"
#import "SNPPerson.h"
#import "SNPCenterComponent/SNPCenterCpnt.h"
#import "NSObject+SNPInvoke.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    [self nativeInvokeWithName:@"SNPPerson.saySomething" params:nil callback:^(NSString * _Nonnull code, NSString * _Nonnull msg, NSDictionary * _Nonnull data) {
        NSLog(@"code : %@", code);
        NSLog(@"msg : %@", msg);
        NSLog(@"data : %@", data);
    }];
}


@end
