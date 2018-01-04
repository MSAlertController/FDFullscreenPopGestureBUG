//
//  ShowNaviBarController.m
//  demo
//
//  Created by moses on 2018/1/2.
//  Copyright © 2018年 MS. All rights reserved.
//

#import "ShowNaviBarController.h"
#import "HideNaviBarController.h"

@interface ShowNaviBarController ()

@end

@implementation ShowNaviBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"显示";
    self.view.backgroundColor = [UIColor orangeColor];
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeSystem)];
    button.frame = CGRectMake(0, 0, 414, 400);
    [button addTarget:self action:@selector(buttonAction) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:button];
    {
        UIButton *button = [UIButton buttonWithType:(UIButtonTypeSystem)];
        button.frame = CGRectMake(0, 400, 414, 400);
        [button addTarget:self action:@selector(buttonActions) forControlEvents:(UIControlEventTouchUpInside)];
        [self.view addSubview:button];
    }
}

- (void)buttonAction {
    [self.navigationController pushViewController:[ShowNaviBarController new] animated:YES];
}
- (void)buttonActions {
    // 如果是 (有导航栏)————>(无导航栏) 则需要设置previousNaviBarShow属性为YES
    // 如果是其他三种情况则不需要设置previousNaviBarShow属性
    HideNaviBarController *hideVC = [[HideNaviBarController alloc] init];
    hideVC.previousNaviBarShow = YES;
    [self.navigationController pushViewController:hideVC animated:YES];
}

@end
