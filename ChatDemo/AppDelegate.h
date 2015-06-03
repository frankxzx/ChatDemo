//
//  AppDelegate.h
//  ChatDemo
//
//  Created by Xzx 's iMac on 15/6/3.
//  Copyright (c) 2015年 touch-spring. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EaseMob.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    EMConnectionState _connectionState;
}

@property (strong, nonatomic) UIWindow *window;


@end

