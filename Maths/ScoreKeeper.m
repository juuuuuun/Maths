//
//  ScoreKeeper.m
//  Maths
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(void)reportScore {
    NSInteger correctPercentage = self.numberOfRights * 100 / (self.numberOfRights + self.numberOfWrongs);
    
    NSLog(@"score: %li right, %li wrong ---- %li%%", self.numberOfRights, self.numberOfWrongs, correctPercentage);
}

@end
