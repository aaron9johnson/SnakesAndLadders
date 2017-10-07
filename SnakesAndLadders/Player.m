//
//  Player.m
//  SnakesAndLadders
//
//  Created by Aaron Johnson on 2017-10-06.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "Player.h"

@implementation Player
- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameOver = false;
        _gameLogic = [[NSDictionary alloc] initWithObjectsAndKeys:
                      @14, @4,
                      @31, @9,
                      @38, @20,
                      @84, @28,
                      @59, @40,
                      @67, @51,
                      @81, @63,
                      @7, @17,
                      @60, @64,
                      @26, @89,
                      @73, @95,
                      @78, @99,nil];
    }
    return self;
}
-(void)roll{
    NSMutableString *rollOutput = [NSMutableString new];
    NSInteger die = arc4random_uniform(6) + 1;
    [rollOutput appendFormat:@"You rolled a %ld\n", (long)die];
    self.currentSquare = self.currentSquare + die;
    if([self.gameLogic objectForKey:[[NSNumber alloc] initWithInt:(int)self.currentSquare]]){
        NSInteger temp = [self.gameLogic[[[NSNumber alloc] initWithInt:(int)self.currentSquare]] integerValue];
        if(temp < self.currentSquare){
            [rollOutput appendFormat:@"You slide down a snake from %ld to %ld\n", (long)self.currentSquare, (long)temp];
        } else {
            [rollOutput appendFormat:@"You climb up a ladder from %ld to %ld!\n", (long)self.currentSquare, (long)temp];
        }
        self.currentSquare = temp;
    } else if(self.currentSquare >= 100){
        self.currentSquare = 100;
        self.gameOver = true;
        [rollOutput appendFormat:@"You landed on 100! You Win!!"];
    } else {
        [rollOutput appendFormat:@"You landed on %ld", (long)self.currentSquare];
    }
    self.output = rollOutput;
}
@end
