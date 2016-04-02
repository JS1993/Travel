//
//  FirstViewController2.m
//  旅游
//
//  Created by  江苏 on 16/3/5.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "FirstViewController2.h"

@interface FirstViewController2 ()

@end

@implementation FirstViewController2

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    self.navigationController.navigationBarHidden=NO;
    self.tabBarController.tabBar.hidden=YES;
}

@end
