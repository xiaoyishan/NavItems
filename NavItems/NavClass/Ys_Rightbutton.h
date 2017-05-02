//
//  Ys_Rightbutton.h
//  YunBu
//
//  Created by Sundear on 2016/12/12.
//  Copyright © 2016年 谢鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UIButton+Block.h"

@interface Ys_Rightbutton : NSObject

+(void)addFinishButton:(UINavigationItem*)nav withName:(NSString*)name Done:(void(^)())click;

+(void)addFinishButton:(UINavigationItem*)nav withIMG:(NSString*)image Done:(void(^)())click;

+(void)addFinishButton:(UINavigationItem*)nav withIMG1:(NSString*)image1 Done1:(void(^)())click1 withIMG2:(NSString*)image2 Done2:(void(^)())click2;


@end
