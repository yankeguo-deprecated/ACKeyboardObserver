//
//  ACViewController.m
//  ACKeyboardObserver
//
//  Created by YANKE Guo on 11/05/2014.
//  Copyright (c) 2014 YANKE Guo. All rights reserved.
//

#import "ACViewController.h"
#import <ACKeyboardObserver/ACKeyboardObserver.h>

@interface ACViewController() <ACKeyboardObserverDelegate>

@property (nonatomic,strong) ACKeyboardObserver * keyboardObserver;

@property (nonatomic,strong) IBOutlet UIScrollView * scrollView;
@property (nonatomic,strong) IBOutlet NSLayoutConstraint * scrollViewToBottom;

@end

@implementation ACViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  self.keyboardObserver = [ACKeyboardObserver observerWithDelegate:self];
  [self.keyboardObserver start];
}

- (void)keyboardWillEmitEvent:(ACKeyboardEvent)event withChange:(ACKeyboardChange)change
{
  if (event == ACKeyboardEventHide) {
    self.scrollViewToBottom.constant = 0;
  } else {
    self.scrollViewToBottom.constant = change.endRect.size.height;
  }
  
  ACKeyboardFastAnimate(change, ^(CGRect beginRect, CGRect endRect) {
    [self.scrollView layoutIfNeeded];
  });
}

@end
