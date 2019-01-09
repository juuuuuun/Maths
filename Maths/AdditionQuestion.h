//
//  AdditionQuestion.h
//  Maths
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

@property (nonatomic, strong) NSString* question;
@property NSInteger answer;
@property (nonatomic, strong) NSDate* startTime;
@property (nonatomic, strong) NSDate* endTime;

- (NSTimeInterval) answerTime;

@end

NS_ASSUME_NONNULL_END
