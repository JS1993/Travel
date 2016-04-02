//
//  DestnationViewController.m
//  旅游
//
//  Created by  江苏 on 16/3/5.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "DestnationViewController.h"

@interface DestnationViewController ()
@property (strong, nonatomic) IBOutlet UIView *stateView;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation DestnationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView.layer.cornerRadius=20;
    self.imageView.layer.masksToBounds=YES;
    //self.stateView.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"IMG_5139"]];
    // Do any additional setup after loading the view.
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
