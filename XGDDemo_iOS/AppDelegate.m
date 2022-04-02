//
//  AppDelegate.m
//  XGDDemo
//
//  Created by xgd on 2022/2/16.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [[[NSBundle alloc] initWithPath: @"/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle"] load];
    return YES;
}

@end


