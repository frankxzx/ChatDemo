//
//  ViewController.m
//  ChatDemo
//
//  Created by Xzx 's iMac on 15/6/3.
//  Copyright (c) 2015年 touch-spring. All rights reserved.
//

#import "ViewController.h"
#import "EaseMob.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //异步注册账号
    [[EaseMob sharedInstance].chatManager asyncRegisterNewAccount:@"frankxzx624"
                                                         password:@"1991624"
                                                   withCompletion:
     ^(NSString *username, NSString *password, EMError *error) {
         
         if (!error) {
             NSLog(@"注册成功");
         }else{
             switch (error.errorCode) {
                 case EMErrorServerNotReachable:
                  NSLog(@"服务器连接失败");
                     break;
                 case EMErrorServerDuplicatedAccount:
                  NSLog(@"注册用户名存在");
                     break;
                 case EMErrorNetworkNotConnected:
                  NSLog(@"网络连接失败");
                     break;
                 case EMErrorServerTimeout:
                  NSLog(@"连接服务器超时");
                     break;
                 default:
                  NSLog(@"注册失败");
                     break;
             }
         }
     } onQueue:nil];
}

@end
