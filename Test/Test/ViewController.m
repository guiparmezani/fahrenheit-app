//
//  ViewController.m
//  Test
//
//  Created by jianpx on 7/10/13.
//  Copyright (c) 2013 PS. All rights reserved.
//

#import "ViewController.h"
#import "PagedImageScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //sample invoke code. 3 lines!
    PagedImageScrollView *pageScrollView = [[PagedImageScrollView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] applicationFrame].size.width, [[UIScreen mainScreen] applicationFrame].size.height + 40)];
    [pageScrollView setScrollViewContents:@[[UIImage imageNamed:@"main.png"], [UIImage imageNamed:@"page-seo.png"], [UIImage imageNamed:@"page-responsiveness.png"], [UIImage imageNamed:@"page-online-marketing.png"], [UIImage imageNamed:@"page-end.png"]]];
    //easily setting pagecontrol pos, see PageControlPosition defination in PagedImageScrollView.h
    pageScrollView.pageControlPos = PageControlPositionCenterBottom;
    [self.view addSubview:pageScrollView];
}

@end
