//
//  nestedText.m
//  TestProject
//
//  Created by Abelardo Marquez on 9/15/14.
//  Copyright (c) 2014 singular. All rights reserved.
//

#import "nestedText.h"

@interface nestedText ()


@end



@implementation nestedText



- (void)viewDidLoad:(UIView*)view
{
    [super viewDidLoad];
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    
    CGFloat totalwidth= screenRect.size.width;
    CGFloat totalheight= screenRect.size.height;
    
    ////TEST
    
    //Title Label
    self.titleLabel =  [[UILabel alloc]init];
    self.titleLabel.text=self.atitleText;
    self.titleLabel.textColor = self.titleColor;
    self.titleLabel.frame = CGRectMake(0,
                                       self.jumpContainer,
                                       totalwidth,
                                       30);
    self.titleLabel.textAlignment = NSTextAlignmentLeft;
    
    [view addSubview:self.titleLabel];
    
    //Open Image
    UIImage* openIconImage = [UIImage imageNamed:self.openIcon];
    UIImageView* openIconImageContainer = [[UIImageView alloc] init];
    openIconImageContainer.image = openIconImage;
    openIconImageContainer.frame = CGRectMake(totalwidth-30,
                                              self.jumpContainer,
                                              20,
                                              20);
    
    [view addSubview:openIconImageContainer];
    
    //Description
    self.descriptionLabel = [[UILabel alloc] init];
    self.descriptionLabel.text = self.adescriptionText;
    self.descriptionLabel.textColor= self.descriptionColor;
    self.descriptionLabel.textAlignment = NSTextAlignmentJustified;
    self.descriptionLabel.numberOfLines= 20;
    if (self.sizeDescription==0) {
        self.sizeDescription=50;
    }
    self.descriptionLabel.frame = CGRectMake(0,
                                             20,
                                             totalwidth,
                                             self.sizeDescription);
    
    [view addSubview:self.descriptionLabel];

    
    self.titleButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.titleButton.frame= CGRectMake(0,
                                       self.jumpContainer,
                                       totalwidth,
    
                                  30);
    self.titleButton.backgroundColor = [UIColor redColor];
    [view addSubview:self.titleButton];
    
 
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(IBAction)butOne:(UILabel*)label
{
  
    NSLog(@"Heloo");
    if (label.hidden==YES) {
        label.hidden=NO;
    }else{
        label.hidden=YES;
    }
}




@end
