//
//  AdditionQuestion.m
//  Maths
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    
    super.question = [[NSString alloc] initWithFormat:@"%lu + %lu ?", super.leftValue, super.rightValue];
    super.answer = super.leftValue + super.rightValue;
}

@end
