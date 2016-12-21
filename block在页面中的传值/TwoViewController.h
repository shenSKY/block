//
//  TwoViewController.h
//  block在页面中的传值
//
//  Created by 石洋洋 on 16/12/21.
//  Copyright © 2016年 sk. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^MessageBlock)(NSString *str);
@interface TwoViewController : UIViewController
@property (copy, nonatomic)MessageBlock messageblock;
- (void)returnMessage:(MessageBlock)block;
@end
