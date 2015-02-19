//
//  TutorialViewController.h
//  TestProject
//
//  Created by Abelardo Marquez on 10/9/14.
//  Copyright (c) 2014 singular. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TutorialViewController : UIViewController  {
    UIScrollView* scrollView;
    UIPageControl* pageControl;
}

@property (nonatomic, retain) IBOutlet UIScrollView* scrollView;
@property (nonatomic, retain) IBOutlet UIPageControl* pageControl;

@end