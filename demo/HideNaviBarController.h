//
//  HideNaviBarController.h
//  demo
//
//  Created by moses on 2018/1/2.
//  Copyright © 2018年 MS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HideNaviBarController : UIViewController

// 避免导航栏从有到无推出的时候瞬间隐藏，要在所有需要隐藏导航栏的页面的h文件中声明previousNaviBarShow属性
@property (nonatomic, assign) BOOL previousNaviBarShow;

@end
