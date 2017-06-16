# JQStickersView
前言
===
JQStickersView: 仿摩拜单车我的贴纸,摩拜单车贴纸弹跳效果, 自定义摩拜单车贴纸效果, iOS开发者交流群: 446310206

![](https://github.com/xiaohange/JQStickersView/blob/master/v1.gif?raw=true)

## Installation

 Drag all source files under floder `JQStickersView` to your project.

## Usage

```
/**
 Initialization JQStickersView

 @param frame frame description
 @param ballDiameter ballDiameter description
 @param imgArray imgArray description
 @return return value description
 */
- (instancetype)initWithFrame:(CGRect)frame andBallDiameter:(CGFloat)ballDiameter andImgArray:(NSMutableArray *)imgArray;


// Stop DeviceMotionUpdate
- (void)stopDeviceMotionUpdate;
```

```
#import "JQStickersView.h"
// imageArray
 NSMutableArray *imgArray = [NSMutableArray arrayWithArray:@[@"testImage_1",@"testImage_2",@"testImage_3",@"testImage_4",@"testImage_5",@"testImage_6",@"testImage_7",@"testImage_8",@"testImage_1",@"testImage_2",@"testImage_3",@"testImage_4"]];
    
    JQStickersView *jqStickersView = [[JQStickersView alloc]initWithFrame:CGRectMake(0, 80, [UIScreen mainScreen].bounds.size.width, 200) andBallDiameter:40 andImgArray:imgArray];
    jqStickersView.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:jqStickersView];
    
//    [jqStickersView stopDeviceMotionUpdate];
```

## Star

[CSDN博客](http://blog.csdn.net/qq_31810357) iOS开发者交流群: 446310206

Love is every every every star! Your support is my renewed motivation!


## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).