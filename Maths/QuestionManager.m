//
//  QuestionManager.m
//  Maths
//
//  Created by Jun Oh on 2019-01-09.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *)timeOutput {
    double totalTime = 0.0;
    
    for(Question* question in self.questions) {
        totalTime += [question answerTime];
    }
    
    double averageTime = totalTime / self.questions.count;
    
    return [NSString stringWithFormat:@"total time: %.1fs, average time: %.1fs", totalTime, averageTime];
}
@end
