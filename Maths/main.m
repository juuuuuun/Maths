//
//  main.m
//  Maths
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "MultiplicationQuestion.h"
#import "DivisionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"MATHS!\n\n");
        
        ScoreKeeper* scoreKeeper = [[ScoreKeeper alloc] init];
        QuestionManager* questionManger = [[QuestionManager alloc] init];
        QuestionFactory* questionFactory = [[QuestionFactory alloc] init];
        while(YES) {
            
           Question* randomQuestion = [questionFactory generateRandomQuestion];
            
            // Every time we create an addition question, we add to the question manager for management
            [questionManger.questions addObject:randomQuestion];
            
            NSLog(@"%@\n", randomQuestion.question);
            
            NSString* inputString = [InputHandler parseInput];
            
            // If the user inputs string "quit", break out of the while loop to end the game
            if([inputString isEqualToString:@"quit"]) {
                break;
            }
            
            if(randomQuestion.answer == [inputString intValue]) {
                scoreKeeper.numberOfRights++;
                NSLog(@"Right!");
            } else {
                scoreKeeper.numberOfWrongs++;
                NSLog(@"Wrong!");
            }
            
            [scoreKeeper reportScore];
            NSLog(@"%@", [questionManger timeOutput]);
        }
    }
    return 0;
}
