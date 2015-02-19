//
//  ConfigView.m
//  TestProject
//
//  Created by Abelardo Marquez on 10/11/14.
//  Copyright (c) 2014 singular. All rights reserved.
//

#import "ConfigView.h"
#import "ConfigTVC.h"

@interface ConfigView ()

@end

@implementation ConfigView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ConfigTVC* configTable = [[ConfigTVC alloc] initWithStyle:UITableViewStylePlain];
    [self.view addSubview:configTable];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
