//
//  ViewController.m
//  block在页面中的传值
//
//  Created by 石洋洋 on 16/12/21.
//  Copyright © 2016年 sk. All rights reserved.
//

#import "ViewController.h"
#import "TwoViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *value;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)present:(UIButton *)sender {
    TwoViewController *vc = [TwoViewController new];
    [vc returnMessage:^(NSString *str) {
        self.value.text = str;
    }];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
