
//
//  Players.m
//  2 Player Math
//
//  Created by Yazan Khayyat on 2015-08-10.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import "Players.h"

@implementation Players

- (instancetype)initWithScore:(int)score life:(int)life number:(int)number;
{
    self = [super init];
    if (self) {
        _life = life;
        _score = score;
        _number = number;
    }
    return self;
}
@end
