//
//  UILabel+Boldify.m
//  TestProject
//
//  Created by Abelardo Marquez on 9/26/14.
//  Copyright (c) 2014 singular. All rights reserved.
//

#import "UILabel+Boldify.h"

@implementation UILabel (Boldify)
- (void)boldRange:(NSRange)range {
    if (![self respondsToSelector:@selector(setAttributedText:)]) {
        return;
    }
    NSMutableAttributedString *attributedText;
    if (!self.attributedText) {
        attributedText = [[NSMutableAttributedString alloc] initWithString:self.text];
    } else {
        attributedText = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    }
    [attributedText setAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"Avenir-Medium" size:(self.font.pointSize+2)]} range:range];
    self.attributedText = attributedText;
}

- (void)boldSubstring:(NSString*)substring {
    NSRange range = [self.text rangeOfString:substring];
    [self boldRange:range];
}
@end