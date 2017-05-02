//
//  Ys_Backbutton.m
//  YunBu
//
//  Created by Sundear on 2016/12/7.
//  Copyright © 2016年 谢鑫. All rights reserved.
//

#import "Ys_Backbutton.h"

@implementation Ys_Backbutton

/** 固定返回按钮 */
+(void)addBackButton:(UINavigationItem*)nav back:(void(^)())click{
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    backBtn.tintColor=[UIColor whiteColor];
    backBtn.frame = CGRectMake(0, 0, 44, 44);
    backBtn.imageEdgeInsets=UIEdgeInsetsMake(0, -35, 0, 0);
    [backBtn setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [backBtn addAction:^(UIButton*B){
        click();
    }];

    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    nav.leftBarButtonItem = backItem;
}


/** 自定义左边按钮 */
+(void)addLeftButton:(UINavigationItem*)nav withName:(NSString*)name Done:(void(^)())click{
    UIButton *rightB = [UIButton buttonWithType:UIButtonTypeSystem];
    rightB.tintColor=[UIColor whiteColor];
    rightB.frame = CGRectMake(0, 0, 50, 44);
    rightB.imageEdgeInsets=UIEdgeInsetsMake(0, -35, 0, 0);
    [rightB setTitle:name forState:UIControlStateNormal];
    [rightB addAction:^(UIButton*B){
        click();
    }];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:rightB];
    nav.leftBarButtonItem = rightItem;
}
@end
