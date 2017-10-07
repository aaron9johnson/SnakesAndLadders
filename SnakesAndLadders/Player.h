//
//  Player.h
//  SnakesAndLadders
//
//  Created by Aaron Johnson on 2017-10-06.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
@property (nonatomic) NSInteger currentSquare;
@property (nonatomic) NSDictionary *gameLogic;
@property (nonatomic) NSString *output;
@property (nonatomic) bool gameOver;
-(void)roll;
@end
