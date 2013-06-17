//
//  RTEGestureRecognizer.h
//  RichTextEditor
//
//  Created by Iain Delaney on 2013-06-17.
//  Copyright (c) 2013 Iain Delaney. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^TouchEventBlock)(NSSet * touches, UIEvent * event);

@interface RTEGestureRecognizer : UIGestureRecognizer
@property(copy) TouchEventBlock touchesBeganCallback;
@property(copy) TouchEventBlock touchesEndedCallback;
@end
