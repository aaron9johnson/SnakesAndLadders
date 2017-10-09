//
//  PlayerManager.m
//  SnakesAndLadders
//
//  Created by Aaron Johnson on 2017-10-08.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [NSMutableArray new];
        _currentIndex = 0;
        _gameOver = false;
    }
    return self;
}
-(void)createPlayers:(int)numPlayers{
    for(int i = 0; i < numPlayers; i++){
        Player *temp = [Player new];
        temp.name =[NSString stringWithFormat:@"Player %d", i + 1];
        [self.players addObject:temp];
    }
    self.currentIndex = numPlayers - 1;
}
-(void)roll{
    self.currentIndex = self.currentIndex + 1;
    [[self currentPlayer] roll];
    NSMutableString *temp = [NSMutableString new];
    [temp appendFormat:@"%@\n", [self currentPlayer].output];
    for(int i = 0; i < self.players.count; i++){
        [temp appendFormat:@"%@'s square:%lu   ", [self.players[i] name], (unsigned long)[self.players[i] currentSquare]];
    }
    self.output = temp;
    if([self currentPlayer].gameOver){
        self.gameOver = true;
    }
}
-(Player *)currentPlayer{
    self.currentIndex = self.currentIndex % self.players.count;
    return self.players[self.currentIndex];
}
@end
