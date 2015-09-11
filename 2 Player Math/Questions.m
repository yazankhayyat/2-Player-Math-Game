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
    
    
    self.firstNumber = arc4random_uniform(20);
    self.secondNumber = arc4random_uniform(20);
    
    
    //self.operator = random from 1-3
    
    //if self.operator == 1 { answer is addition }
    //else if self.operator == 2 { answer is subtraction}
    
    self.answer = self.firstNumber + self.secondNumber;
            
    NSString *firstNumberString = [NSString stringWithFormat:@"%d", self.firstNumber];
    
    NSString *secondNumberString = [NSString stringWithFormat:@"%d", self.secondNumber];
            
    NSString *firstPartOfQuestion = [firstNumberString stringByAppendingString:@" + "];
    
    NSString *secondPartOfQuestion = [secondNumberString stringByAppendingString:@" = ?"];
    
    self.questionEquation = [firstPartOfQuestion stringByAppendingString:secondPartOfQuestion];
    

    }
    


@end
