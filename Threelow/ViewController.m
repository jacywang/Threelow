//
//  ViewController.m
//  Threelow
//
//  Created by JIAN WANG on 5/12/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIButton *dice1;
@property (strong, nonatomic) IBOutlet UIButton *dice2;
@property (strong, nonatomic) IBOutlet UIButton *dice3;
@property (strong, nonatomic) IBOutlet UIButton *dice4;
@property (strong, nonatomic) IBOutlet UIButton *dice5;
@property (strong, nonatomic) NSArray *diceImageArray;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.diceImageArray = @[
                        [UIImage imageNamed:@"dice_1.png"],
                        [UIImage imageNamed:@"dice_2.png"],
                        [UIImage imageNamed:@"dice_3.png"],
                        [UIImage imageNamed:@"dice_4.png"],
                        [UIImage imageNamed:@"dice_5.png"],
                        [UIImage imageNamed:@"dice_6.png"],
                        ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rollDiceButtonPressed:(UIButton *)sender {
    int numberArray[5];
    for (int i = 0; i < 5; i++) {
        int randomNumber = arc4random_uniform(6);
        numberArray[i] = randomNumber;
    }
    
    self.dice1.imageView.image = self.diceImageArray[numberArray[0]];
    self.dice2.imageView.image = self.diceImageArray[numberArray[1]];
    self.dice3.imageView.image = self.diceImageArray[numberArray[2]];
    self.dice4.imageView.image = self.diceImageArray[numberArray[3]];
    self.dice5.imageView.image = self.diceImageArray[numberArray[4]];
    
}

- (IBAction)resetDiceButtonPressed:(UIButton *)sender {
}

@end
