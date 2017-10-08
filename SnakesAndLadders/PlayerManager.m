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
    }
    return self;
}
@end
