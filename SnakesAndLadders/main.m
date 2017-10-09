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
#import "InputManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PlayerManager *pManager = [PlayerManager new];
        while(1){
            NSString *temp = [InputManager userInput:@"Pick number of players: "];
            if([temp integerValue] != nil){
                int numPlayers = (int)[temp integerValue];
                if (numPlayers != 0) {
                    [pManager createPlayers:numPlayers];
                    break;
                }
            }
            
        }
        bool game = true;
        while(game){
            NSString *inputString = [InputManager userInput:@"Type roll or r"];
            if([inputString isEqualToString:@"roll"] || [inputString isEqualToString:@"r"]){
                [pManager roll];
            }
            if([inputString isEqualToString:@"quit"]){
                break;
            }
            NSLog(@"%@", [pManager output]);
            if(pManager.gameOver){
                game = false;
            }
        }
        
    }
    return 0;
}
