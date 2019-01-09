//
//  InputHandler.m
//  Maths
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString *)parseInput {
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    
    return [[NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
