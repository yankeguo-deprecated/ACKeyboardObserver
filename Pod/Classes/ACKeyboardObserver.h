//
//  ACKeyboardObserver.h
//  IGKitDemo
//
//  Created by YANKE Guo on 12/12/13.
//  Copyright (c) 2013 IREUL Guo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#pragma mark - Basic Struct

typedef struct {
  CGRect                  beginRect;
  CGRect                  endRect;
  NSTimeInterval          duration;
  UIViewAnimationCurve    animationCurve;
} ACKeyboardChange;

typedef NS_ENUM(NSInteger, ACKeyboardEvent) {
  ACKeyboardEventShow,
  ACKeyboardEventHide,
  ACKeyboardEventChangeFrame
};

#pragma mark - Fast keyboard animation

typedef void (^ACKeyboardAnimationBlock)(CGRect beginRect,CGRect endRect);

//  convert UIViewAnimationCurve to UIViewAnimationOptions
UIViewAnimationOptions IGAnimationOptionsWithCurve(UIViewAnimationCurve curve);

//  convient method to make a animation attached with a ACKeyboardChange
void ACKeyboardFastAnimate(ACKeyboardChange change,ACKeyboardAnimationBlock block);

#pragma mark - Delegate Protocol

@class ACKeyboardObserver;

@protocol ACKeyboardObserverDelegate <NSObject>

@optional

- (void)keyboardWillEmitEvent:(ACKeyboardEvent)event withChange:(ACKeyboardChange)change;
- (void)keyboardDidEmitEvent:(ACKeyboardEvent)event withChange:(ACKeyboardChange)change;

@end

@interface ACKeyboardObserver : NSObject

@property (nonatomic,assign,readonly) id<ACKeyboardObserverDelegate> delegate;
@property (nonatomic,assign,readonly,getter = isObserving) BOOL observing;

+ (instancetype)observerWithDelegate:(id<ACKeyboardObserverDelegate>)delegate;

- (id)initWithDelegate:(id<ACKeyboardObserverDelegate>)delegate;

- (void)start;

- (void)stop;

@end
