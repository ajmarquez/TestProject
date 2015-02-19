//
//  stageOne.m
//  TestProject
//
//  Created by Abelardo Marquez on 9/16/14.
//  Copyright (c) 2014 singular. All rights reserved.
//

#import "stageOne.h"
#import "nestedText.h"

@interface stageOne ()

@end



@implementation stageOne


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat totalwidth= (screenRect.size.width);
    CGFloat totalheight= (screenRect.size.height);
    self.view.backgroundColor = [UIColor whiteColor];
    UIView* testView = [[UIView alloc] initWithFrame:CGRectMake(0, 100, totalwidth, 500)];
    testView.backgroundColor = [UIColor grayColor];
    
    /*nestedText* numberOne = [[nestedText alloc] init];
    numberOne.jumpContainer=0;
    numberOne.titleColor = [UIColor blackColor];
    numberOne.descriptionColor = [UIColor blackColor];
    numberOne.sizeDescription=100;
    numberOne.openIcon=@"ico_fb.png";
    numberOne.closeIcon=@"ico_twitter";
    numberOne.atitleText=@"Who is Tony Stark?";
    numberOne.adescriptionText= @"A billionaire, inventor, philantropist, obsesive, egocentric, vicious man who also happens to be the one and only Iron Man. what else to say about Stark? he made the Iron Man armor by himself after been held captive by terrorists";
    
  
    [self.view addSubview:testView];
    [numberOne viewDidLoad:testView];
    [numberOne.titleButton addTarget:self action:@selector(buttheOne:) forControlEvents:UIControlEventTouchUpInside];
    */
    
    
    
    UILabel* labelUno = [[UILabel alloc] init];
    labelUno.text= @"Prueba";
    [self.view addSubview:labelUno];
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
