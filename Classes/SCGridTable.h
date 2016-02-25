//
//  SCGridTable.h
//  demo
//
//  Created by 罗思成 on 16/2/25.
//  Copyright © 2016年 罗思成. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCGridTable : UIView <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UIView *headerView;
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UITableView *gridTable;

@property (nonatomic, strong) NSArray *header;
@property (nonatomic, strong) NSArray *data;
@property (nonatomic, strong) NSArray *ratio;


- (instancetype)initWithFrame:(CGRect)frame
                       header:(NSArray *)header
                         data:(NSArray *)data;

- (instancetype)initWithFrame:(CGRect)frame
                       header:(NSArray *)header
                         data:(NSArray *)data
                        ratio:(NSArray *)ratio;

- (void)extandViewWithWidth:(CGFloat)width;

@end


@protocol SCGridTableDelegate <NSObject>

@optional
- (void)SCGridTable:(SCGridTable *)SCGridTable clickWithValue:(NSString *)value;
- (void)SCGridTable:(SCGridTable *)SCGridTable clickWithIndex:(CGPoint)index;

@end