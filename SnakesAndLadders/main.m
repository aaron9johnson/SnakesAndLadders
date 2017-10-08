//
//  main.m
//  SnakesAndLadders
//
//  Created by Aaron Johnson on 2017-10-06.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PlayerManager *pManager = [PlayerManager new];
        Player *p1 = [Player new];
        bool game = true;
        while(game){
            NSLog(@"Type roll or r");
            char inputChars[255];
            fgets(inputChars, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            inputString = [inputString substringToIndex:(inputString.length-1)];
            if([inputString isEqualToString:@"roll"] || [inputString isEqualToString:@"r"]){
                [p1 roll];
            }
            NSLog(@"%@", [p1 output]);
            if(p1.gameOver){
                game = false;
            }
        }
        
    }
    return 0;
}
