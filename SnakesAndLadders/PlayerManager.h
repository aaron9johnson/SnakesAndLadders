//
//  PlayerManager.h
//  SnakesAndLadders
//
//  Created by Aaron Johnson on 2017-10-08.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject
@property (nonatomic) NSMutableArray *players;
@property (nonatomic) NSUInteger currentIndex;
@property (nonatomic) NSString *output;
@property (nonatomic) bool gameOver;
-(void)createPlayers:(int)numPlayers;
-(void)roll;
-(Player *)currentPlayer;
@end
