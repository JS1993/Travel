//
//  MyViewController2.m
//  旅游
//
//  Created by  江苏 on 16/3/5.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "MyViewController2.h"

@interface MyViewController2 ()

@end

@implementation MyViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    self.navigationController.navigationBarHidden=NO;
    self.tabBarController.tabBar.hidden=YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
