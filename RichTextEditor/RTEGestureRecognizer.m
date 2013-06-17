//
//  RTEGestureRecognizer.m
//  RichTextEditor
//
//  Created by Iain Delaney on 2013-06-17.
//  Copyright (c) 2013 Iain Delaney. All rights reserved.
//

#import "RTEGestureRecognizer.h"
#import <UIKit/UIGestureRecognizerSubclass.h>
@implementation RTEGestureRecognizer
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (_touchesBeganCallback)
        _touchesBeganCallback(touches, event);
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (_touchesEndedCallback)
        _touchesEndedCallback(touches, event);
}
- (BOOL)canBePreventedByGestureRecognizer:(UIGestureRecognizer *)preventingGestureRecognizer {
    if ([[preventingGestureRecognizer description] rangeOfString:@"UIScrollViewPanGestureRecognizer"].location != NSNotFound)
        return NO;
    return [super canBePreventedByGestureRecognizer:preventingGestureRecognizer];
}
@end
