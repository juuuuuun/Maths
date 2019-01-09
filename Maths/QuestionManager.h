//
//  QuestionManager.h
//  Maths
//
//  Created by Jun Oh on 2019-01-09.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray* questions;

- (NSString *) timeOutput;

@end

NS_ASSUME_NONNULL_END
