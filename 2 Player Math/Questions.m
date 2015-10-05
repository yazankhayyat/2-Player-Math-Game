//
//  Questions.m
//  2 Player Math
//
//  Created by Yazan Khayyat on 2015-08-10.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import "Questions.h"

@implementation Questions

-(void)assignNumbers {
    
    int n1 = arc4random_uniform(21), n2 = arc4random_uniform(21);
    self.firstNumber = MAX(n1, n2);
    self.secondNumber = MIN(n2, n1);
    self.operatorChoice = arc4random_uniform(3);
    
    
    
    if (self.operatorChoice == 0) {
        self.answer = self.firstNumber + self.secondNumber;
        self.questionOperator = @"+";
        
        self.questionEquation = [[NSString alloc] initWithFormat:@"%d %@ %d = ?", self.firstNumber, self.questionOperator, self.secondNumber];
    }
    
    else if (self.operatorChoice == 1) {
        self.answer = self.firstNumber * self.secondNumber;
        self.questionOperator = @"*";
        
        self.questionEquation = [[NSString alloc] initWithFormat:@"%d %@ %d = ?", self.firstNumber, self.questionOperator, self.secondNumber];
    }
    
    else if (self.operatorChoice == 2) {
        self.questionOperator = @"-";
        self.answer = self.firstNumber - self.secondNumber;
        self.questionEquation = [[NSString alloc] initWithFormat:@"%d %@ %d = ?", self.firstNumber, self.questionOperator, self.secondNumber];
        }
}


@end
