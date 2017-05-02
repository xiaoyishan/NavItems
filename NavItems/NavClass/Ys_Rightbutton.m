//
//  Ys_Rightbutton.m
//  YunBu
//
//  Created by Sundear on 2016/12/12.
//  Copyright © 2016年 谢鑫. All rights reserved.
//

#import "Ys_Rightbutton.h"

@implementation Ys_Rightbutton

+(void)addFinishButton:(UINavigationItem*)nav withName:(NSString*)name Done:(void(^)())click{
    UIButton *rightB = [UIButton buttonWithType:UIButtonTypeSystem];
    rightB.tintColor=[UIColor whiteColor];
    rightB.frame = CGRectMake(0, 0, 50, 44);
    rightB.imageEdgeInsets=UIEdgeInsetsMake(0, -35, 0, 0);
    [rightB setTitle:name forState:UIControlStateNormal];
    [rightB addAction:^(UIButton*B){
        click();
    }];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:rightB];
    nav.rightBarButtonItem = nil;
    nav.rightBarButtonItem = rightItem;
}

+(void)addFinishButton:(UINavigationItem*)nav withIMG:(NSString*)image Done:(void(^)())click{
    UIButton *rightB = [UIButton buttonWithType:UIButtonTypeSystem];
    rightB.tintColor=[UIColor whiteColor];
    rightB.frame = CGRectMake(0, 0, 30, 44);
    [rightB setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [rightB addAction:^(UIButton*B){
        click();
    }];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:rightB];
    nav.rightBarButtonItem = nil;
    nav.rightBarButtonItem = rightItem;
}

+(void)addFinishButton:(UINavigationItem*)nav withIMG1:(NSString*)image1 Done1:(void(^)())click1 withIMG2:(NSString*)image2 Done2:(void(^)())click2{

    UIButton *Bar1 = [UIButton buttonWithType:UIButtonTypeSystem];
    Bar1.tintColor=[UIColor whiteColor];
    Bar1.frame = CGRectMake(0, 0, 30, 44);
    [Bar1 setImage:[UIImage imageNamed:image1] forState:UIControlStateNormal];
    [Bar1 addAction:^(UIButton*B){
        click1();
    }];
    UIBarButtonItem *Bar1Item = [[UIBarButtonItem alloc] initWithCustomView:Bar1];

    UIButton *Bar2 = [UIButton buttonWithType:UIButtonTypeSystem];
    Bar2.tintColor=[UIColor whiteColor];
    Bar2.frame = CGRectMake(0, 0, 30, 44);
    [Bar2 setImage:[UIImage imageNamed:image2] forState:UIControlStateNormal];
    [Bar2 addAction:^(UIButton*B){
        click2();
    }];
    UIBarButtonItem *Bar2Item = [[UIBarButtonItem alloc] initWithCustomView:Bar2];
    nav.rightBarButtonItems = @[Bar2Item,Bar1Item];
}



@end
