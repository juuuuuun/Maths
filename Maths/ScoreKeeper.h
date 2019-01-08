//
//  ScoreKeeper.h
//  Maths
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property NSInteger numberOfRights;
@property NSInteger numberOfWrongs;

- (void) reportScore;

@end

NS_ASSUME_NONNULL_END
