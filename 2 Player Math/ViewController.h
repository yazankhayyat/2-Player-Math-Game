//
//  ViewController.h
//  2 Player Math
//
//  Created by Yazan Khayyat on 2015-08-10.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *displayNumberLabel;
@property (weak, nonatomic) IBOutlet UIButton *number1Button;
@property (weak, nonatomic) IBOutlet UIButton *number2Button;
@property (weak, nonatomic) IBOutlet UIButton *number3Button;
@property (weak, nonatomic) IBOutlet UIButton *number4Button;
@property (weak, nonatomic) IBOutlet UIButton *number5Button;
@property (weak, nonatomic) IBOutlet UIButton *number6Button;
@property (weak, nonatomic) IBOutlet UIButton *number7Button;
@property (weak, nonatomic) IBOutlet UIButton *number8Button;
@property (weak, nonatomic) IBOutlet UIButton *number9Button;
@property (weak, nonatomic) IBOutlet UIButton *number0Button;
@property (weak, nonatomic) IBOutlet UIButton *enterButton;
@property (weak, nonatomic) IBOutlet UILabel *displayQuestionLabel;
@property (weak, nonatomic) IBOutlet UILabel *player1LivesLabel;
@property (weak, nonatomic) IBOutlet UILabel *player2LivesLabel;
@property (weak, nonatomic) IBOutlet UILabel *player1ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *player2ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerNumberLabel;
@property (weak, nonatomic) IBOutlet UIButton *restartButton;

@end

