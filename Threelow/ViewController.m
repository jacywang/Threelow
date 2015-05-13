//
//  ViewController.m
//  Threelow
//
//  Created by JIAN WANG on 5/12/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "ViewController.h"
#import "Dice.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIButton *dice1;
@property (strong, nonatomic) IBOutlet UIButton *dice2;
@property (strong, nonatomic) IBOutlet UIButton *dice3;
@property (strong, nonatomic) IBOutlet UIButton *dice4;
@property (strong, nonatomic) IBOutlet UIButton *dice5;
@property (strong, nonatomic) NSArray *diceArray;
@property (strong, nonatomic) NSMutableArray *diceResults;
@property (assign, nonatomic) NSInteger round;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.diceResults = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rollDiceButtonPressed:(UIButton *)sender {
    self.round += 1;
    self.diceArray = @[
                       [[Dice alloc] init],
                       [[Dice alloc] init],
                       [[Dice alloc] init],
                       [[Dice alloc] init],
                       [[Dice alloc] init]
                       ];
    
    [self.dice1 setTitle:[self.diceArray[0] face] forState:UIControlStateNormal];
    self.dice1.backgroundColor = [UIColor whiteColor];
    
    [self.dice2 setTitle:[self.diceArray[1] face] forState:UIControlStateNormal];
    self.dice2.backgroundColor = [UIColor whiteColor];
    
    [self.dice3 setTitle:[self.diceArray[2] face] forState:UIControlStateNormal];
    self.dice3.backgroundColor = [UIColor whiteColor];
    
    [self.dice4 setTitle:[self.diceArray[3] face] forState:UIControlStateNormal];
    self.dice4.backgroundColor = [UIColor whiteColor];
    
    [self.dice5 setTitle:[self.diceArray[4] face] forState:UIControlStateNormal];
    self.dice5.backgroundColor = [UIColor whiteColor];
    
}

- (IBAction)resetDiceButtonPressed:(UIButton *)sender {
    self.round = 0;
    self.scoreLabel.text = @"0";
    self.diceResults = [NSMutableArray array];
    
    [self.dice1 setTitle:@"" forState:UIControlStateNormal];
    self.dice1.backgroundColor = [UIColor whiteColor];
    
    [self.dice2 setTitle:@"" forState:UIControlStateNormal];
    self.dice2.backgroundColor = [UIColor whiteColor];
    
    [self.dice3 setTitle:@"" forState:UIControlStateNormal];
    self.dice3.backgroundColor = [UIColor whiteColor];
    
    [self.dice4 setTitle:@"" forState:UIControlStateNormal];
    self.dice4.backgroundColor = [UIColor whiteColor];
    
    [self.dice5 setTitle:@"" forState:UIControlStateNormal];
    self.dice5.backgroundColor = [UIColor whiteColor];
    
}

- (IBAction)holdDiePressed:(UIButton *)sender {
    UIButton *clickedButton = (UIButton *)sender;
    NSInteger currentDiceIndex = clickedButton.tag - 1;
    if (clickedButton.backgroundColor == [UIColor lightGrayColor]) {
        clickedButton.backgroundColor = [UIColor whiteColor];
        [self.diceResults removeLastObject];
    } else {
        clickedButton.backgroundColor = [UIColor lightGrayColor];
        self.diceResults[self.round - 1] = self.diceArray[currentDiceIndex];
    }

    NSInteger scoreSum = 0;
    
    for (Dice *die in self.diceResults) {
        if (die && (die.diceNumber + 1 != 3)) {
            scoreSum += die.diceNumber + 1;
        }
    }
    
    self.scoreLabel.text = [NSString stringWithFormat:@"%lu",scoreSum];
}

@end
