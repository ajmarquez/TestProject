//
//  TutorialVC.h
//  TestProject
//
//  Created by Abelardo Marquez on 10/9/14.
//  Copyright (c) 2014 singular. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TutorialVC : UIViewController <UIScrollViewDelegate>

@property (nonatomic, retain) UIScrollView *scrollview;
@property (nonatomic, retain) UIPageControl * pageControl;
@property (nonatomic, strong) UIButton* goHomeButton;
@end

