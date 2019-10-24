//
//  Cell.m
//  CellLayout
//
//  Created by Greg Cooksey on 10/24/19.
//  Copyright © 2019 Zello. All rights reserved.
//

#import "Cell.h"

@interface Cell ()
@property (nonatomic, strong) IBOutlet NSLayoutConstraint *imageAlignedLabelConstraint;
@property (nonatomic, strong) IBOutlet NSLayoutConstraint *cellAlignedLabelConstraint;
@end

@implementation Cell

- (void)awakeFromNib {
  [super awakeFromNib];
  [self setNeedsUpdateConstraints];
}

- (void)updateConstraints {
  self.cellAlignedLabelConstraint.active = NO;
  self.imageAlignedLabelConstraint.active = YES;
  [super updateConstraints];
}

@end
