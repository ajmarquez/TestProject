//
//  TutorialVC.m
//  TestProject
//
//  Created by Abelardo Marquez on 10/9/14.
//  Copyright (c) 2014 singular. All rights reserved.
//

#import "TutorialVC.h"

@interface TutorialVC ()

@end

@implementation TutorialVC


- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat totalwidth= (screenRect.size.width);
    CGFloat totalheight= (screenRect.size.height);
    
    self.view.backgroundColor = [UIColor blackColor];
    
    //adding the scrollView
    self.scrollview = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, totalwidth, totalheight)];
    self.scrollview.contentSize = CGSizeMake(5*totalwidth, totalheight);
    self.scrollview.pagingEnabled = YES;
    self.scrollview.delegate = self;
    //self.scrollview.scrollEnabled = YES;
    

    self.pageControl = [[UIPageControl alloc] init];
    self.pageControl.frame = CGRectMake(0, totalheight-90, totalwidth,50 );
    self.pageControl.currentPage= 0;
    self.pageControl.numberOfPages = 5;
    //self.pageControl.backgroundColor = [UIColor redColor];
    self.pageControl.tintColor = [UIColor redColor];
   
    self.goHomeButton = [[UIButton alloc] init];
    self.goHomeButton.frame = CGRectMake(0, totalheight-50, totalwidth, 50);
    self.goHomeButton.backgroundColor = [UIColor whiteColor];
    self.goHomeButton.alpha = 0.3f;
    UILabel* exploreText = [[UILabel alloc] initWithFrame:CGRectMake(0, totalheight-50, totalwidth, 50)];
    exploreText.text = @"Explore Now >";
    exploreText.font = [UIFont fontWithName:@"Raleway-Medium" size:16];
    exploreText.textAlignment = NSTextAlignmentCenter;
    exploreText.textColor = [UIColor whiteColor];

    
    
    UIImage* xtutorial1 = [UIImage imageNamed:@"tutorial_paso_01.jpg"];
    UIImage* xtutorial2 = [UIImage imageNamed:@"tutorial_paso_02.jpg"];
    UIImage* xtutorial3 = [UIImage imageNamed:@"tutorial_paso_03.jpg"];
    UIImage* xtutorial4 = [UIImage imageNamed:@"tutorial_paso_04.jpg"];
    UIImage* xtutorial5 = [UIImage imageNamed:@"tutorial_paso_05.jpg"];
    
    UIImageView* tut1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, totalwidth, totalheight)];
    UIImageView* tut2 = [[UIImageView alloc] initWithFrame:CGRectMake(totalwidth, 0, totalwidth, totalheight)];
    UIImageView* tut3 = [[UIImageView alloc] initWithFrame:CGRectMake(2*totalwidth, 0, totalwidth, totalheight)];
    UIImageView* tut4 = [[UIImageView alloc] initWithFrame:CGRectMake(3*totalwidth, 0, totalwidth, totalheight)];
    UIImageView* tut5 = [[UIImageView alloc] initWithFrame:CGRectMake(4*totalwidth, 0, totalwidth, totalheight)];
    
    tut1.image = xtutorial1;
    tut2.image = xtutorial2;
    tut3.image = xtutorial3;
    tut4.image = xtutorial4;
    tut5.image = xtutorial5;
    
    // Textos
    
  
    
    
                                                                     
    
    
    
    
    
    [self.scrollview addSubview:tut1];

    
    
    [self.scrollview addSubview:tut2];
    [self.scrollview addSubview:tut3];
    [self.scrollview addSubview:tut4];
    [self.scrollview addSubview:tut5];
    [self.view addSubview:self.scrollview];
    [self.view addSubview:self.pageControl];
    [self.view addSubview:self.goHomeButton];
    [self.view addSubview:exploreText];
    
    [self tutorialText:@"Welcome!"
                  body:@"Discover an universe of augmented reality around you"
                  page:1];
    [self tutorialText:@"Aim"
                  body:@"Place your camera in front of objects marked with our logo"
                  page:2];
    [self tutorialText:@"Discover"
                  body:@"See that awesome content? We call it Experiences"
                  page:3];
    [self tutorialText:@"Play"
                  body:@"Explore the Experiences from different angles and discover what they can do"
                  page:4];
    [self tutorialText:@"Enjoy!"
                  body:@"There are many more amazing Experiences at the Browse section"
                  page:5];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat pageWidth = self.scrollview.frame.size.width;
    int page = floor((self.scrollview.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.pageControl.currentPage = page;
}

- (void) tutorialText:(NSString*) header body:(NSString*) body page:(NSInteger) page {

    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat totalwidth= (screenRect.size.width);
    CGFloat totalheight= (screenRect.size.height);
    
    UIFont* defaultText= [UIFont fontWithName:@"Raleway-Light" size:14];
    UIFont* defaultHeader= [UIFont fontWithName:@"Raleway-Bold" size:22];
    
    
    UILabel* tut1Header = [[UILabel alloc] initWithFrame:CGRectMake(totalwidth*(page-1)+20, totalheight-160, totalwidth-40, 50)];
    tut1Header.text = header;
    tut1Header.textAlignment = NSTextAlignmentCenter;
    tut1Header.font = defaultHeader;
    tut1Header.textColor = [UIColor whiteColor];
    UILabel* tut1body   = [[UILabel alloc] initWithFrame:CGRectMake(totalwidth*(page-1)+30, totalheight- 140,totalwidth-60, 70)];
    tut1body.text   = body;
    tut1body.font = defaultText;
    tut1body.textAlignment = NSTextAlignmentCenter;
    tut1body.numberOfLines= 2;
    tut1body.textColor = [UIColor whiteColor];
    
    [self.scrollview addSubview:tut1Header];
    [self.scrollview addSubview:tut1body];
}




@end
