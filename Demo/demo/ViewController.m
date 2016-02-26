//
//  ViewController.m
//  demo
//
//  Created by 罗思成 on 16/2/25.
//  Copyright © 2016年 罗思成. All rights reserved.
//

#import "ViewController.h"
#import "SCGridTable.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *header = @[@"name", @"height", @"weight", @"date"];
    
    SCGridTable *vinda = [[SCGridTable alloc] initWithFrame:CGRectMake(0, 20, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame) - 40) header:header data:[self getTestData]];
    vinda.delegate = self;
    [self.view addSubview:vinda];
}

#pragma - SCGridTable Delegate

- (void)SCGridTable:(SCGridTable *)SCGridTalbe clickWithText:(NSString *)text {
    NSLog(@"SCGridTable: %@", text);
}

#pragma - Test Data

- (NSArray *)getTestData {
    NSMutableArray *test = [[NSMutableArray alloc] init];
    [test addObject:@[@"lily", @"165cm", @"53kg", @"2016-02-13"]];
    [test addObject:@[@"Bob", @"173cm", @"72kg", @"2016-01-02"]];
    return [test copy];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
