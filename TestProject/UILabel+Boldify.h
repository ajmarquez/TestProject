//
//  UILabel+Boldify.h
//  TestProject
//
//  Created by Abelardo Marquez on 9/26/14.
//  Copyright (c) 2014 singular. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Boldify)
- (void) boldSubstring: (NSString*) substring;
- (void) boldRange: (NSRange) range;
@end