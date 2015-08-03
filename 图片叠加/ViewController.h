//
//  ViewController.h
//  图片叠加
//
//  Created by ios on 15/7/24.
//  Copyright (c) 2015年 ios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoStackView.h"

@interface ViewController : UIViewController<PhotoStackViewDataSource,PhotoStackViewDelegate>

@property (nonatomic, strong) PhotoStackView *photoStack;

@end

