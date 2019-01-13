//
//  ViewController.m
//  SNPCenterComponent
//
//  Created by Sniper on 2019/1/13.
//  Copyright © 2019 Sniper. All rights reserved.
//

#import "ViewController.h"
#import "SNPPerson.h"
#import "SNPCenterComponent/SNPCenterCpmt.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    SNPPerson *person = [[SNPPerson alloc] init];
//    [person eat];
//    [[SNPCenterCpmt center] performTarget:@"SNPPerson" actionName:@"eat" withParams:@{@"a":@"1"}];
//    [[SNPCenterCpmt center] performTarget:@"SNPPerson" actionName:@"say" withParams:@{@"a":@"1"}];
    [[SNPCenterCpmt center] performTarget:@"SNPPerson" actionName:@"sleepTime" withParams:@{@"a":@"1"}];
    [[SNPCenterCpmt center] performTarget:@"SNPPerson" actionName:@"getStr" withParams:@{@"a":@"1"}];
//    [[SNPCenterCpmt center] performTarget:@"SNPPerson" actionName:@"eat" withParams:nil];
    [[SNPCenterCpmt center] performTarget:@"SNPPerson" actionName:@"saySomething" withParams:nil];
}


@end
