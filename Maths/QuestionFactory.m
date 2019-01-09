//
//  QuestionFactory.m
//  Maths
//
//  Created by Jun Oh on 2019-01-09.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import "QuestionFactory.h"

@interface QuestionFactory () {
    NSArray* _questionSubclassName;
}
@end

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassName = [NSArray arrayWithObjects:@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion", nil];
    }
    return self;
}

- (Question *)generateRandomQuestion {
    NSString* questionName = _questionSubclassName[arc4random_uniform([[[NSNumber alloc] initWithLong:_questionSubclassName.count] intValue])];
    return [[NSClassFromString(questionName) alloc] init];
}

@end
