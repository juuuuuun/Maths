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
        
        // arc4random_uniform outputs a random number from 0-90
        unsigned int firstRandomNumber = 10 + arc4random_uniform(91);
        unsigned int secondRandomNumber = 10 + arc4random_uniform(91);
        
        _question = [[NSString alloc] initWithFormat:@"%i + %i ?", firstRandomNumber, secondRandomNumber];
        _answer = firstRandomNumber + secondRandomNumber;
        
        _startTime = [NSDate date];
    }
    return self;
}

- (NSTimeInterval)answerTime {
    return [_endTime timeIntervalSinceDate:_startTime];
}

-(NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}
@end
