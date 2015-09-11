//
//  Players.h
//  2 Player Math
//
//  Created by Yazan Khayyat on 2015-08-10.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Players : NSObject

@property (nonatomic, strong) NSString *player;
@property (nonatomic, assign) int score;
@property (nonatomic, assign) int life;
@property (nonatomic, assign) int number;

- (instancetype)initWithScore:(int)score life:(int)life number:(int)number;


@end
