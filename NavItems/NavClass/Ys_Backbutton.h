//
//  Ys_Backbutton.h
//  YunBu
//
//  Created by Sundear on 2016/12/7.
//  Copyright © 2016年 谢鑫. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "UIButton+Block.h"

@interface Ys_Backbutton : NSObject

/** 固定返回按钮 */
+(void)addBackButton:(UINavigationItem*)nav back:(void(^)())click;

/** 自定义左边按钮 */
+(void)addLeftButton:(UINavigationItem*)nav withName:(NSString*)name Done:(void(^)())click;
@end


