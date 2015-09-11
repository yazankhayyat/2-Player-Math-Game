//
//  Questions.h
//  2 Player Math
//
//  Created by Yazan Khayyat on 2015-08-10.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Questions : NSObject

@property (nonatomic, assign) int answer;
@property (nonatomic, assign) int firstNumber;
@property (nonatomic, assign) int secondNumber;
@property (nonatomic, strong) NSString *questionEquation;

-(void)assignNumbers;

@end
