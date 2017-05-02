//
//  ViewController.m
//  NavItems
//
//  Created by Sundear on 2017/5/2.
//  Copyright © 2017年 xiexin. All rights reserved.
//

#import "ViewController.h"

#import "Ys_Backbutton.h"
#import "Ys_Rightbutton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor=[UIColor whiteColor];
    [self.navigationController.navigationBar setBarStyle:UIBarStyleBlack];
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];

}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    int demo = arc4random() % 6;
    NSString *MP=[NSString stringWithFormat:@"demo%zd",demo];
    [self performSelector:NSSelectorFromString(MP)];
    self.title=MP;

}




-(void)demo0{
    [Ys_Backbutton addBackButton:self.navigationItem back:^{
        [self.navigationController popViewControllerAnimated:YES];
    }];
}
-(void)demo1{
    [Ys_Backbutton addLeftButton:self.navigationItem withName:@"定位" Done:^{
        [self.navigationController popViewControllerAnimated:YES];
    }];
}
-(void)demo2{
    [Ys_Backbutton addLeftButton:self.navigationItem withIMG:@"search" Done:^{
        [self.navigationController popViewControllerAnimated:YES];
    }];
}



-(void)demo3{
    [Ys_Rightbutton addFinishButton:self.navigationItem withIMG:@"+" Done:^{
        ViewController *vc=[ViewController new];
        [self.navigationController pushViewController:vc animated:YES];
    }];
}
-(void)demo4{
    [Ys_Rightbutton addFinishButton:self.navigationItem withName:@"查看" Done:^{
        ViewController *vc=[ViewController new];
        [self.navigationController pushViewController:vc animated:YES];
    }];
}
-(void)demo5{

    [Ys_Rightbutton addFinishButton:self.navigationItem withIMG1:@"search" Done1:^{
        ViewController *vc=[ViewController new];
        [self.navigationController pushViewController:vc animated:YES];

    } withIMG2:@"+" Done2:^{
        ViewController *vc=[ViewController new];
        [self.navigationController pushViewController:vc animated:YES];
    }];

}
@end
