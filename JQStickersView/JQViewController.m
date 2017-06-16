//
//  JQViewController.m
//  JQStickersView
//
//  Created by 韩俊强 on 2017/6/16.
//  Copyright © 2017年 HaRi. All rights reserved.
//

#import "JQViewController.h"
#import "JQStickersView.h"

@interface JQViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *myTableView;

@end

@implementation JQViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"我的贴纸";
    
    NSMutableArray *imgArray = [NSMutableArray arrayWithArray:@[@"testImage_1",@"testImage_2",@"testImage_3",@"testImage_4",@"testImage_5",@"testImage_6",@"testImage_7",@"testImage_8",]];
    
    JQStickersView *jqStickersView = [[JQStickersView alloc]initWithFrame:CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, 200)  andBallDiameter:0 andImgArray:imgArray];
    jqStickersView.backgroundColor = [UIColor cyanColor];
    
    
    _myTableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    _myTableView.delegate = self;
    _myTableView.dataSource = self;
    _myTableView.tableHeaderView = jqStickersView;
    [self.view addSubview:_myTableView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 15;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identify = @"myCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:identify];
    }
    cell.textLabel.text = @"这是一个贴纸用在tableView头部的测试";
    return cell;
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
