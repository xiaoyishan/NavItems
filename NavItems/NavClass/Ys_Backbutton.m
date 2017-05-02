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
    UIButton *LeftB = [UIButton buttonWithType:UIButtonTypeSystem];
    LeftB.tintColor=[UIColor whiteColor];
    LeftB.frame = CGRectMake(0, 0, 50, 44);
    LeftB.imageEdgeInsets=UIEdgeInsetsMake(0, -35, 0, 0);
    [LeftB setTitle:name forState:UIControlStateNormal];
    [LeftB addAction:^(UIButton*B){
        click();
    }];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:LeftB];
    nav.leftBarButtonItem = leftItem;
}
+(void)addLeftButton:(UINavigationItem*)nav withIMG:(NSString*)image Done:(void(^)())click{
    UIButton *LeftB = [UIButton buttonWithType:UIButtonTypeSystem];
    LeftB.tintColor=[UIColor whiteColor];
    LeftB.frame = CGRectMake(0, 0, 50, 44);
    LeftB.imageEdgeInsets=UIEdgeInsetsMake(0, -35, 0, 0);
    [LeftB setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [LeftB addAction:^(UIButton*B){
        click();
    }];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:LeftB];
    nav.leftBarButtonItem = leftItem;
}

@end
