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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rollDiceButtonPressed:(UIButton *)sender {
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
}

- (IBAction)holdDiePressed:(UIButton *)sender {
    UIButton *clickedButton = (UIButton *)sender;
    clickedButton.backgroundColor = [UIColor lightGrayColor];
}

@end
