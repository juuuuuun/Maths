//
//  Question.m
//  Maths
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype) init {
    if (self = [super init]) {
        
        // arc4random_uniform outputs a random number from 0-90
        _leftValue = 10 + arc4random_uniform(91);
        _rightValue = 10 + arc4random_uniform(91);
        
        _startTime = [NSDate date];
    }
    return self;
}

-(void)generateQuestion {
    // Do nothing
    ;
}

- (NSTimeInterval)answerTime {
    return [_endTime timeIntervalSinceDate:_startTime];
}

-(NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}
@end
