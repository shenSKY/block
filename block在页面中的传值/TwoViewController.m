//
//  TwoViewController.m
//  block在页面中的传值
//
//  Created by 石洋洋 on 16/12/21.
//  Copyright © 2016年 sk. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()
@property (weak, nonatomic) IBOutlet UITextField *input;

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (void)returnMessage:(MessageBlock)block
{
    if (block) {
        self.messageblock = block;
    }
}
- (IBAction)dismiss:(UIButton *)sender {
    if (self.messageblock) {
        self.messageblock(self.input.text);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
