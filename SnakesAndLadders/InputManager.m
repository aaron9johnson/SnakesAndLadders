//
//  InputManager.m
//  SnakesAndLadders
//
//  Created by Aaron Johnson on 2017-10-08.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "InputManager.h"

@implementation InputManager
+(NSString *)userInput:(NSString *)prompt{
    NSLog(@"%@", prompt);
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    return [inputString substringToIndex:(inputString.length-1)];
}
@end
