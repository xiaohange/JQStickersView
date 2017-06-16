//
//  JQStickersView.h
//  JQStickersView
//
//  Created by 韩俊强 on 2017/6/16.
//  Copyright © 2017年 HaRi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JQStickersView : UIView

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

@end
