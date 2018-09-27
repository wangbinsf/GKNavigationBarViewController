//
//  GKDemo009ViewController.m
//  GKNavigationBarViewControllerDemo
//
//  Created by gaokun on 2018/9/10.
//  Copyright © 2018年 gaokun. All rights reserved.
//

#import "GKDemo009ViewController.h"
#import "GKDemo001ViewController.h"

@interface GKDemo009ViewController ()<UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (nonatomic, assign) BOOL isHideLine;

@end

@implementation GKDemo009ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gk_navBackgroundColor = [UIColor lightGrayColor];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.gk_navShadowColor = [UIColor redColor];
    
    self.gk_navTitle = @"GKDemo009";
    
    GKDemo001ViewController *deom001 = [GKDemo001ViewController new];
    [self.view addSubview:deom001.view];
    
    [self addChildViewController:deom001];
    
    self.gk_navItemLeftSpace = 40.0f;
    
    self.gk_navItemRightSpace = 4.0f;
    
    self.gk_navRightBarButtonItem = [UIBarButtonItem itemWithTitle:@"完成" target:self action:@selector(itemClick)];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    self.gk_statusBarHidden = NO;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    if (self.isHideLine) {
//        self.isHideLine = NO;
//
//        [self showNavLine];
//    }else {
//        self.isHideLine = YES;
//
//        [self hideNavLine];
//    }
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    picker.allowsEditing = YES;
    [self presentViewController:picker animated:YES completion:nil];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)info {
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)dealloc {
    NSLog(@"%@ dealloc", NSStringFromClass([self class]));
}

- (void)itemClick {
    
}

@end
