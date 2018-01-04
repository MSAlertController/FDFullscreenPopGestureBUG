//
//  AppDelegate.m
//  demo
//
//  Created by moses on 2018/1/2.
//  Copyright © 2018年 MS. All rights reserved.
//

#import "AppDelegate.h"
#import "ShowNaviBarController.h"
#import "HideNaviBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[HideNaviBarController alloc] init]];
//    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[ShowNaviBarController alloc] init]];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
