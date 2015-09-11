//
//  ViewController.m
//  2 Player Math
//
//  Created by Yazan Khayyat on 2015-08-10.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import "ViewController.h"
#import "Players.h"
#import "Questions.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *number;
@property Questions *question;
//@property Players *player;
@property (nonatomic, strong) NSArray *playersArray;
@property (nonatomic, assign) int currentPlayerIndex;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self reloadGame];
    
}

-(void)reloadGame {
    [self addPlayers];
    self.question = [[Questions alloc]init];
    [self.question assignNumbers];
    self.displayQuestionLabel.text = self.question.questionEquation;
    self.currentPlayerIndex = 0;
}


-(void)endGame {
    
    
    Players *playerOne = self.playersArray[0];
    Players *playerTwo = self.playersArray[1];
    
    NSLog(@"Player 1: %d, Player 2: %d", playerOne.score, playerTwo.score);
    
    if (playerOne.score > playerTwo.score)
    {
        self.playerNumberLabel.text = [NSString stringWithFormat:@"Player %d Wins!",playerOne.number];
    }
    else if (playerTwo.score > playerOne.score)
    {
        self.playerNumberLabel.text = [NSString stringWithFormat:@"Player %d Wins!",playerTwo.number];
    }
    else if (playerOne.score == playerTwo.score) {
        if (playerOne.life < playerTwo.life)
        {
            self.playerNumberLabel.text = [NSString stringWithFormat:@"Player %d Wins!",playerTwo.number];
        }else if (playerOne.life > playerTwo.life) {
            
            self.playerNumberLabel.text = [NSString stringWithFormat:@"Player %d Wins!",playerOne.number];
        }
    }
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)appendDisplayNumberString:(NSString *)string
{
    self.displayNumberLabel.text = [self.displayNumberLabel.text stringByAppendingString:string];
    
}


- (IBAction)enterPressed:(id)sender {
    int myNumber = [self.displayNumberLabel.text intValue];
    Players *curPlayer = self.playersArray[self.currentPlayerIndex];
    NSLog(@"%d", self.currentPlayerIndex);
    while (curPlayer.life > 0) {
        
        if (myNumber == self.question.answer) {
            NSLog(@"Correct!");
            curPlayer.score += 5;
            NSLog(@"Right: %d", curPlayer.score);
            [self resetNumberLabel];
            [self displayLifeLabel:curPlayer];
            [self displayScoreLabel:curPlayer];
            [self giveNextQuestion];
            
            return;
        }
        
        else if (myNumber != self.question.answer) {
            NSLog(@"Wrong!");
          
            curPlayer.life -= 1;
            [self displayLifeLabel:curPlayer];
            if (curPlayer.life < 1) {
                curPlayer.score -= 10;
                [self endGame];
                [self displayScoreLabel:curPlayer];
                return;
            }
            [self displayLifeLabel:curPlayer];
            [self displayScoreLabel:curPlayer];
            self.currentPlayerIndex = (self.currentPlayerIndex + 1) % 2;
            [self displayPlayerNumberLabel:curPlayer];
            [self resetNumberLabel];
            [self giveNextQuestion];
            NSLog(@"Wrong: %d", curPlayer.score);
            self.playerNumberLabel.text = [NSString stringWithFormat:@"Player %d", (curPlayer.number)];
            [self displayPlayerNumberLabel:curPlayer];
            return;
        }
        
    }

}


- (void)resetNumberLabel {
    self.displayNumberLabel.text =  @" ";
}

- (IBAction)button1Pressed:(id)sender {
    self.number = @"Number";
    if ([self.displayNumberLabel.text isEqualToString:self.number]) {
        self.displayNumberLabel.text = @"1";
        
    }else {
        
        [self appendDisplayNumberString:@"1"];
        
    }
}

- (IBAction)button2Pressed:(id)sender {
    self.number = @"Number";
    if ([self.displayNumberLabel.text isEqualToString:self.number]) {
        self.displayNumberLabel.text = @"2";
        
    }else {
        
        [self appendDisplayNumberString:@"2"];
        
    }
}

- (IBAction)button3Pressed:(id)sender {
    self.number = @"Number";
    if ([self.displayNumberLabel.text isEqualToString:self.number]) {
        self.displayNumberLabel.text = @"3";
        
    }else {
        
        [self appendDisplayNumberString:@"3"];
        
    }
}

- (IBAction)button4Pressed:(id)sender {
    self.number = @"Number";
    if ([self.displayNumberLabel.text isEqualToString:self.number]) {
        self.displayNumberLabel.text = @"4";
        
    }else {
        
        [self appendDisplayNumberString:@"4"];
        
    }
}

- (IBAction)button5Pressed:(id)sender {
    self.number = @"Number";
    if ([self.displayNumberLabel.text isEqualToString:self.number]) {
        self.displayNumberLabel.text = @"5";
        
    }else {
        
        [self appendDisplayNumberString:@"5"];
        
    }
}
- (IBAction)button6Pressed:(id)sender {
    self.number = @"Number";
    if ([self.displayNumberLabel.text isEqualToString:self.number]) {
        self.displayNumberLabel.text = @"6";
        
    }else {
        
        [self appendDisplayNumberString:@"6"];
        
    }
    
}- (IBAction)button7Pressed:(id)sender {
    self.number = @"Number";
    if ([self.displayNumberLabel.text isEqualToString:self.number]) {
        self.displayNumberLabel.text = @"7";
        
    }else {
        
        [self appendDisplayNumberString:@"7"];
        
    }
}

- (IBAction)button8Pressed:(id)sender {
    self.number = @"Number";
    if ([self.displayNumberLabel.text isEqualToString:self.number]) {
        self.displayNumberLabel.text = @"8";
    }else {
        
        [self appendDisplayNumberString:@"8"];
        
    }
}

- (IBAction)button9Pressed:(id)sender {
    self.number = @"Number";
    if ([self.displayNumberLabel.text isEqualToString:self.number]) {
        self.displayNumberLabel.text = @"9";
        
    }else {
        
        [self appendDisplayNumberString:@"9"];
        
    }
}

- (IBAction)button0Pressed:(id)sender {
    self.number = @"Number";
    if ([self.displayNumberLabel.text isEqualToString:self.number]) {
        self.displayNumberLabel.text = @"0";
        
    }else {
        
        [self appendDisplayNumberString:@"0"];
        
    }
}
- (IBAction)restartButtonPressed:(id)sender {
   
    [self reloadGame];
//    self.player = [[Players alloc]initWithScore:0 life:3 number:0];

}

-(void)giveNextQuestion {
    [self.question assignNumbers];
    self.displayQuestionLabel.text = self.question.questionEquation;
}

-(void)addPlayers {
    Players *player1 = [[Players alloc]initWithScore:0 life:3 number:1];
    Players *player2 = [[Players alloc]initWithScore:0 life:3 number:2];
    
    self.playersArray = [[NSArray alloc]initWithObjects:player1, player2, nil];;
    self.playerNumberLabel.text = @"Player 1";
    self.player1ScoreLabel.text = [NSString stringWithFormat:@"Score: %d",player1.score];
    self.player2ScoreLabel.text = [NSString stringWithFormat:@"Score: %d",player2.score];
    self.player1LivesLabel.text = [NSString stringWithFormat:@"Lives: %d",player1.life];
    self.player2LivesLabel.text = [NSString stringWithFormat:@"Lives: %d",player2.life];
    

    
}

-(void)displayLifeLabel:(Players *)player{
    
     NSString *currentPlayerLives = [[NSString alloc]initWithFormat:@"Lives: %d",player.life];
    if (self.currentPlayerIndex == 0) {
        self.player1LivesLabel.text = currentPlayerLives;
        
    }else if(self.currentPlayerIndex == 1){
       
        self.player2LivesLabel.text = currentPlayerLives;
        
    }
    
}
-(void)displayScoreLabel:(Players *)player{
    
    NSString *currentPlayerScore = [[NSString alloc]initWithFormat:@"Score: %d",player.score];
    
    NSLog(@"Index %d: %d", self.currentPlayerIndex, player.score);
    if (self.currentPlayerIndex == 0) {
        self.player1ScoreLabel.text = currentPlayerScore;
        
    }else if(self.currentPlayerIndex == 1){
        
        self.player2ScoreLabel.text = currentPlayerScore;
        
    }
    
}

-(void)displayPlayerNumberLabel:(Players *)player{
    
    NSNumber *newIndex = [NSNumber numberWithDouble:(self.currentPlayerIndex +1)];
    self.playerNumberLabel.text = [NSString stringWithFormat:@"Player %@", (newIndex)];
}






@end
