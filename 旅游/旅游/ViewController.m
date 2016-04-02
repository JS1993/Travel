//
//  ViewController.m
//  旅游
//
//  Created by  江苏 on 16/3/4.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"
#import "FirstCollectView.h"
@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UIBarPositioningDelegate>
@property (weak, nonatomic) IBOutlet FirstCollectView *firstCollectView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (strong, nonatomic) IBOutlet UIImageView *firstImageView;
@property (strong, nonatomic) IBOutlet UIImageView *secondImageView;
@property (strong, nonatomic) IBOutlet UIImageView *thirdImageView;
@property (strong, nonatomic) IBOutlet UIImageView *fourthImageView;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.firstCollectView.delegate=self;
    self.firstCollectView.dataSource=self;
    self.firstCollectView.backgroundColor=[UIColor whiteColor];
    self.searchBar.delegate=self;
    //不用重复注册
//    [self.firstCollectView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"FirstCell"];
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    self.navigationController.navigationBarHidden=YES;
    self.tabBarController.tabBar.hidden=NO;
}
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    [self.searchBar resignFirstResponder];
}

- (NSInteger)collectionView:(FirstCollectView *)firstCollectView  numberOfItemsInSection:(NSInteger)section {
    return 8;
}

- (UICollectionViewCell *)collectionView:(FirstCollectView *)firstCollectView  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row==0) {
        UICollectionViewCell  *cell = [firstCollectView dequeueReusableCellWithReuseIdentifier:@"FirstCell"forIndexPath:indexPath];
        cell.backgroundColor=[UIColor whiteColor];
        return cell;
    }else if(indexPath.row==1){
        UICollectionViewCell  *cell = [firstCollectView dequeueReusableCellWithReuseIdentifier:@"FirstCell1"forIndexPath:indexPath];
        cell.backgroundColor=[UIColor whiteColor];
        return cell;
    }else if (indexPath.row==2){
        UICollectionViewCell  *cell = [firstCollectView dequeueReusableCellWithReuseIdentifier:@"FirstCell2"forIndexPath:indexPath];
        cell.backgroundColor=[UIColor whiteColor];
        return cell;
    }else if (indexPath.row==3){
        UICollectionViewCell  *cell = [firstCollectView dequeueReusableCellWithReuseIdentifier:@"FirstCell3"forIndexPath:indexPath];
        cell.backgroundColor=[UIColor whiteColor];
        return cell;
    }else if (indexPath.row==4){
        UICollectionViewCell  *cell = [firstCollectView dequeueReusableCellWithReuseIdentifier:@"FirstCell4"forIndexPath:indexPath];
        cell.backgroundColor=[UIColor whiteColor];
        return cell;
    }else if (indexPath.row==5){
        UICollectionViewCell  *cell = [firstCollectView dequeueReusableCellWithReuseIdentifier:@"FirstCell5"forIndexPath:indexPath];
        cell.backgroundColor=[UIColor whiteColor];
        return cell;
    }else if (indexPath.row==6){
        UICollectionViewCell  *cell = [firstCollectView dequeueReusableCellWithReuseIdentifier:@"FirstCell6"forIndexPath:indexPath];
        cell.backgroundColor=[UIColor whiteColor];
        return cell;
    }else{
        UICollectionViewCell  *cell = [firstCollectView dequeueReusableCellWithReuseIdentifier:@"FirstCell7"forIndexPath:indexPath];
        cell.backgroundColor=[UIColor whiteColor];
        return cell;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
