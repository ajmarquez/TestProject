//
//  ConfigVC.m
//  TestProject
//
//  Created by Abelardo Marquez on 10/11/14.
//  Copyright (c) 2014 singular. All rights reserved.
//

#import "ConfigVC.h"

@interface ConfigVC ()

@end

@implementation ConfigVC

@synthesize tutorialButton;
@synthesize fbButton;
@synthesize twButton;
@synthesize webButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat totalwidth= (screenRect.size.width);
    
    //Define Icons by using the Singular Typography.
    
    UILabel* header= [[UILabel alloc] init];
    header.text=@"Settings";
    header.frame= CGRectMake(0, 20, totalwidth, 30);
    header.font = [UIFont fontWithName:@"Avenir-Heavy" size:16];
    header.textAlignment = NSTextAlignmentCenter;

    
    NSString* tutorialIcon = [NSString stringWithUTF8String:"\ue601"];
    NSString* facebookIcon = [NSString stringWithUTF8String:"\ue621"];
    NSString* twitterIcon = [NSString stringWithUTF8String:"\ue61d"];
    NSString* webIcon = [NSString stringWithUTF8String:"\ue619"];
    
    //Apply the create-option-because-is-too-boring-to-do-it-manually method
    // The /params : UIButton (button to use), icon (yep the one declared upstairs), NSString *what you
    // want it to says), CGFloat yposition (where will you place it)
    
    [self option:self.tutorialButton icon:tutorialIcon name:@"Take a look at the Tutorial" yPosition:60];
    [self option:self.fbButton icon:facebookIcon name:@"Follow us on Facebook" yPosition:100];
    [self option:self.twButton icon:twitterIcon name:@"Follow us on Twitter" yPosition:140];
    [self option:self.webButton icon:webIcon name:@"About Singular" yPosition:180];
    
    [self.view addSubview:header];
   
    
    







}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)option:(UIButton*)button icon:(NSString*) icon name:(NSString*)name yPosition: (CGFloat) altitude {
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat totalwidth= (screenRect.size.width);
    
    
    UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(10, altitude, totalwidth-20, 1)];
    lineView.backgroundColor = [UIColor colorWithRed:128/255.0f green:128/255.0f blue:128/255.0f alpha:0.5f];
    UILabel *iconLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, altitude+10, 25, 25)];
    
    iconLabel.font = [UIFont fontWithName:@"Singularicons_02_b" size:22];
    [iconLabel setText:icon];
    iconLabel.textColor = [UIColor colorWithRed:128/255.0f green:128/255.0f blue:128/255.0f alpha:0.5f];
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, altitude+5, totalwidth-20, 30)];
    nameLabel.text = name;
    nameLabel.font = [UIFont fontWithName:@"Raleway-Light" size:14];
    button = [[UIButton alloc] init];
    button.frame = CGRectMake(0, altitude, totalwidth, 30);
    
    [self.view addSubview:lineView];
    [self.view addSubview:iconLabel];
    [self.view addSubview:nameLabel];
    
    
    
                        
}

-(void)openFacebookURL
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://goo.gl/BCuWod"]];
}

-(void)openTwitterURL
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://goo.gl/Sn4YUP"]];
}

-(void)openSingularURL
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://goo.gl/dhBKhq"]];
}

@end
