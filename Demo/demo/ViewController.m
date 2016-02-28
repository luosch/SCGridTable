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
    NSArray *ratio = @[@(0.2), @(0.2), @(0.2), @(0.4)];
    
    self.vinda = [[SCGridTable alloc] initWithFrame:CGRectMake(0, 20, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame) - 40) header:header data:[self getTestData1] ratio:ratio];
    self.vinda.delegate = self;
    [self.view addSubview:self.vinda];
    
    [self performSelector:@selector(refreshTest) withObject:self afterDelay:3];
    [self performSelector:@selector(extendWidthTest) withObject:self afterDelay:6];
}

#pragma - SCGridTable Delegate

- (void)SCGridTable:(SCGridTable *)SCGridTalbe clickWithText:(NSString *)text {
    NSLog(@"SCGridTable: %@", text);
}

#pragma - Test Data

- (NSArray *)getTestData1 {
    NSMutableArray *test = [[NSMutableArray alloc] init];
    [test addObject:@[@"lily", @"165cm", @"53kg", @"2016-02-13"]];
    [test addObject:@[@"Bob", @"173cm", @"72kg", @"2016-01-02"]];
    return [test copy];
}

- (NSArray *)getTestData2 {
    NSMutableArray *test = [[NSMutableArray alloc] init];
    [test addObject:@[@"lily", @"165cm", @"53kg", @"2016-02-13"]];
    [test addObject:@[@"Bob", @"173cm", @"72kg", @"2016-01-02"]];
    [test addObject:@[@"John", @"180cm", @"67kg", @"2015-11-23"]];
    return [test copy];
}

#pragma - Test Refresh

- (void)refreshTest {
    [self.vinda refreshWithData:[self getTestData2]];
}

#pragma - Test Extend Width

- (void)extendWidthTest {
    [self.vinda extandViewWithWidth:300];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
