//
//  HideNaviBarController.m
//  demo
//
//  Created by moses on 2018/1/2.
//  Copyright © 2018年 MS. All rights reserved.
//

#import "HideNaviBarController.h"
#import "ShowNaviBarController.h"
#import "UINavigationController+FDFullscreenPopGesture.h"

@interface HideNaviBarController ()

@end

@implementation HideNaviBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"显示";
    self.view.backgroundColor = [UIColor magentaColor];
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

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    // 在所有需要隐藏导航栏的页面加上这两行代码，所有需要显示导航栏的页面不做任何操作即可
    self.fd_prefersNavigationBarHidden = YES;
    [self.navigationController setNavigationBarHidden:YES animated:self.previousNaviBarShow];
}

- (void)buttonAction {
    [self.navigationController pushViewController:[ShowNaviBarController new] animated:YES];
}
- (void)buttonActions {
    [self.navigationController pushViewController:[HideNaviBarController new] animated:YES];
}

@end
