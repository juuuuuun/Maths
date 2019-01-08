//
//  AdditionQuestion.m
//  Maths
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype) init {
    if (self = [super init]) {
        unsigned int firstRandomNumber = 10 + arc4random_uniform(90);
        unsigned int secondRandomNumber = 10 + arc4random_uniform(90);
        _question = [[NSString alloc] initWithFormat:@"%i + %i ?", firstRandomNumber, secondRandomNumber];
        _answer = firstRandomNumber + secondRandomNumber;
    }
    return self;
}

@end
