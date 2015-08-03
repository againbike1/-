//
//  ViewController.m
//  图片叠加
//
//  Created by ios on 15/7/24.
//  Copyright (c) 2015年 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *photos;
-(void)setup;
@end

@implementation ViewController
-(NSArray *)photos {
    if(!_photos) {
        
        _photos = [NSArray arrayWithObjects:
                   [UIImage imageNamed:@"photo1.jpg"],
                   [UIImage imageNamed:@"photo2.jpg"],
                   [UIImage imageNamed:@"photo3.jpg"],
                   
                   nil];
        
    }
    return _photos;
}

-(PhotoStackView *)photoStack {
    if(!_photoStack) {
        _photoStack = [[PhotoStackView alloc] initWithFrame:CGRectMake(0, 60, 300, 300)];
        _photoStack.center = CGPointMake(self.view.center.x, 200);
        _photoStack.dataSource = self;
        _photoStack.delegate = self;
    }
    
    return _photoStack;
}



#pragma mark -
#pragma mark Deck DataSource Protocol Methods

-(NSUInteger)numberOfPhotosInPhotoStackView:(PhotoStackView *)photoStack {
    return [self.photos count];
}

-(UIImage *)photoStackView:(PhotoStackView *)photoStack photoForIndex:(NSUInteger)index {
    return [self.photos objectAtIndex:index];
}


-(void)setup {
    [self.view addSubview:self.photoStack];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setup];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
