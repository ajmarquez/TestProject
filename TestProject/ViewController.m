//
//  ViewController.m
//  TestProject
//
//  Created by Abelardo Marquez on 9/1/14.
//  Copyright (c) 2014 singular. All rights reserved.
//

#import "ViewController.h"
#import "navbarConstructor.h"
#import "stageOne.h"
#import "TextViewController.h"
#import "TutorialVC.h"
#import "PagedScrollViewController.h"
#import "TutorialViewController.h"
#import "TutorialVC.h"
#import "ConfigView.h"
#import "ConfigTVC.h"
#import "ConfigVC.h"
#import "CornerVC.h"
#import "RegistryVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Fade In animation
    self.view.alpha = 0;
    [UIView animateWithDuration:0.5 animations:^{
        self.view.alpha = 1;
    }];
    
    //end of Fade in animation
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat totalwidth= (screenRect.size.width); 
    CGFloat totalheight= (screenRect.size.height);
    

    /*
     [WHEN IMPLEMENTING THIS CLASS COPY AND PASTE THIS FOR REFERENCE]
     
     This Class creates a NavBar using elected icons, colors ans size. Currently works for 4, 3 and 2 buttons NavBar. The
     variables are the following:
     
     Respecting the NavBar:
     
     abarHeightIpad: For the height of the bar on iPad devices
     abarHeightIphone: For the height of the bar on iPhone devices
     abarDiv: for number of divisions
     abarLateralIpad: for lateral space on iPad
     abarLateralIphone: for lateral space on iPhone
     abarBotton: for botton space
     colorBar: the background color of the NavBar
     
     iconSize: Mandatory. Add the size of the icon.
     
     iconNumber: The name of the image file for the icon of the current button
     colorNumber: the UIColor for the button
     buttonNumber: the button object
     
     */
    
    UILabel* name = [[UILabel alloc] init];
    name.text= @"This is a Test App";
    name.font = [UIFont fontWithName:@"AmericanTypewriter-Bold" size:24 ];
    name.frame = CGRectMake((totalwidth-250)/2, (totalheight/2)-190, 250, 100);
    name.numberOfLines= 1;
    name.textColor = [UIColor blackColor];
    name.textAlignment = NSTextAlignmentCenter;
    
    UILabel* detail = [[UILabel alloc] init];
    detail.text= @"So here we test the navbarConstructor (here!) and also the nestedTextField (which should be the first button).";
    detail.font = [UIFont fontWithName:@"AmericanTypewriter" size:14 ];
    detail.frame = CGRectMake((totalwidth-250)/2, (totalheight/2)-80, 250, 100);
    detail.numberOfLines= 5;
    detail.textColor = [UIColor blackColor];
    detail.textAlignment = NSTextAlignmentJustified;
    
    

  
    
    
    [self.view addSubview:name];
    [self.view addSubview:detail];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    navbarConstructor *barra = [[navbarConstructor alloc] init];
    
    barra.abarHeightIpad = 46;
    barra.abarHeightIphone = barra.abarHeightIpad;
    barra.abarLateralIpad = 20;
    barra.abarLateralIphone= barra.abarLateralIpad;
    barra.abarBotton= 10;
    
    barra.iconSize = 35;
    
    barra.colorBar = [UIColor clearColor];
    
    barra.iconOne = @"ico_fb.png";
    barra.colorOne = [UIColor cyanColor];
    
    barra.iconTwo = @"ico_twitter.png";
    barra.colorTwo = [UIColor  greenColor];
    
    barra.iconThree = @"ico_fb.png";
    barra.colorThree = [UIColor purpleColor];
    
    barra.iconFour = @"ico_twitter.png";
    barra.colorFour = [UIColor  redColor];
    
    navbarConstructor* back = [[navbarConstructor alloc]init];
    
    back.colorOne = [UIColor purpleColor];
    
    back.colorTwo = [UIColor blackColor];
    
   
    back.colorThree = [UIColor cyanColor];
    
   
    back.colorFour = [UIColor  blackColor];
    back.abarHeightIpad = 20;
    back.abarHeightIphone = barra.abarHeightIpad;
    back.abarLateralIpad = 20;
    back.abarLateralIphone= barra.abarLateralIpad;
    back.abarBotton = 0;
    back.colorBar = [UIColor clearColor];

    
    
    //[self.view addSubview:barra.view];
    [back buildFourHeadedNavBar:self];
    [barra buildFourHeadedNavBar:self];
    //[barra buildTwoHeadedNavBar:self];
    //[barra buildThreeHeadedNavBar:self];
    
    [barra.buttonOne addTarget:self action:@selector(butOne:) forControlEvents:UIControlEventTouchUpInside];
    [barra.buttonTwo addTarget:self action:@selector(butTwo:) forControlEvents:UIControlEventTouchUpInside];
    [barra.buttonThree addTarget:self action:@selector(butThree:) forControlEvents:UIControlEventTouchUpInside];
    [barra.buttonFour addTarget:self action:@selector(butFour:) forControlEvents:UIControlEventTouchUpInside];
    
    
	// Do any additional setup after loading the view, typically from a nib.
    
    NSArray *fontFamilies = [UIFont familyNames];
    for (int i = 0; i < [fontFamilies count]; i++)
    {
        NSString *fontFamily = [fontFamilies objectAtIndex:i];
        NSArray *fontNames = [UIFont fontNamesForFamilyName:[fontFamilies objectAtIndex:i]];
        NSLog (@"%@: %@", fontFamily, fontNames);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)butOne:(id) sender {
    NSLog(@"Presiono el UNO");
    stageOne* firstOne = [[stageOne alloc] init];
    [self presentViewController:firstOne animated:YES completion:nil];
    
}

-(void)butTwo:(id) sender{
     NSLog(@"Presiono el DOS");
    TextViewController* firstOne = [[TextViewController alloc] init];
    [self presentViewController:firstOne animated:YES completion:nil];
}

-(void)butThree:(id) sender{
     NSLog(@"Presiono el TRES");
    TutorialVC* firstOne = [[TutorialVC alloc] init];
    [self presentViewController:firstOne animated:YES completion:nil];
}

-(void)butFour:(id) sender{
    NSLog(@"Presiono el TRES");
    RegistryVC* firstOne = [[RegistryVC alloc] init];
    [self presentViewController:firstOne animated:YES completion:nil];
}


@end
