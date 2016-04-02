//
//  MyViewController.m
//  旅游
//
//  Created by  江苏 on 16/3/5.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "MyViewController.h"
#import "MyTableView.h"
@interface MyViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UIImageView *headImageView;
@property (strong, nonatomic) IBOutlet UILabel *levelLabel;
@property (strong, nonatomic) IBOutlet UITableView *detailTable;

@end

@implementation MyViewController
static NSString* indefentifier=@"MyCell";
- (void)viewDidLoad {
    [super viewDidLoad];
    self.headImageView.layer.cornerRadius=20;
    self.headImageView.layer.masksToBounds=YES;
    self.levelLabel.layer.cornerRadius=3;
    self.levelLabel.layer.masksToBounds=YES;
    self.detailTable.delegate=self;
    self.detailTable.dataSource=self;
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    self.navigationController.navigationBarHidden=NO;
    self.tabBarController.tabBar.hidden=NO;
}
- (NSInteger)numberOfSectionsInTableView:(MyTableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 5;
}

- (NSInteger)tableView:(MyTableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    if (section==0) {
        return 1;
    }else if (section==1){
        return 2;
    }else if (section==2){
        return 2;
    }else if (section==3){
        return 2;
    }else{
        return 1;
    }
}

- (UITableViewCell *)tableView:(MyTableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section==0&&indexPath.row==0) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell" forIndexPath:indexPath];
        return cell;
    }else if (indexPath.section==1&&indexPath.row==0){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell1" forIndexPath:indexPath];
        return cell;
    }else if (indexPath.section==1&&indexPath.row==1){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell2" forIndexPath:indexPath];
        return cell;
    }else if (indexPath.section==2&&indexPath.row==0){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell3" forIndexPath:indexPath];
        return cell;
    }else if (indexPath.section==2&&indexPath.row==1){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell4" forIndexPath:indexPath];
        return cell;
    }else if (indexPath.section==3&&indexPath.row==0){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell5" forIndexPath:indexPath];
        return cell;
    }else if (indexPath.section==3&&indexPath.row==1){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell6" forIndexPath:indexPath];
        return cell;
    }else{
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell7" forIndexPath:indexPath];
        return cell;
    }
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
