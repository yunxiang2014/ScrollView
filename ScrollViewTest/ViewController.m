//
//  ViewController.m
//  ScrollViewTest
//
//  Created by ChaiYunxiang on 2/25/15.
//  Copyright (c) 2015 ChaiYunxiang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGFloat with = 400;
    CGFloat high = 600;
    
    for (int i; i< 6; i++) {
        UIImageView *imgae = [[UIImageView alloc]init];
        CGFloat imageX = (i-1) * with;
        CGFloat imageY = 0.f;
        imgae.frame = CGRectMake(imageX, imageY, with, high);
        imgae.image = [UIImage imageNamed:[NSString stringWithFormat:@"img_%02d",i]];
        
        [self.scrollView addSubview:imgae];
    }
    
    self.scrollView.contentSize = CGSizeMake(5 * with, 0);
    
    self.scrollView.pagingEnabled = YES;
}


@end
