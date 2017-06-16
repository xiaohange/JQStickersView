//
//  ViewController.m
//  JQStickersView
//
//  Created by 韩俊强 on 2017/6/16.
//  Copyright © 2017年 HaRi. All rights reserved.
//

#import "ViewController.h"
#import "JQStickersView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSMutableArray *imgArray = [NSMutableArray arrayWithArray:@[@"testImage_1",@"testImage_2",@"testImage_3",@"testImage_4",@"testImage_5",@"testImage_6",@"testImage_7",@"testImage_8",@"testImage_1",@"testImage_2",@"testImage_3",@"testImage_4"]];
    
    JQStickersView *jqStickersView = [[JQStickersView alloc]initWithFrame:CGRectMake(0, 80, [UIScreen mainScreen].bounds.size.width, 200) andBallDiameter:40 andImgArray:imgArray];
    jqStickersView.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:jqStickersView];
    
//    [jqStickersView stopDeviceMotionUpdate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
