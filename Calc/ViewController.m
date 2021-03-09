//
//  ViewController.m
//  Calc
//
//  Created by 副島祐希 on 2021/03/06.
//  Copyright © 2021 副島祐希. All rights reserved.
//
#define CASE(str) if ([__c__ isEqualToString:(str)])
#define SWITCH(c) for (NSString *__c__=(c);__c__;__c__ = nil)
#define DEFAULT

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController
long dispNum = 0;
long beforeNum = 0;
long MAX = 1000000;
NSString *op = @"";
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setNum:(int)num {
    if(dispNum < MAX){
        dispNum = dispNum * 10 + num;
        NSString *str = [NSString stringWithFormat:@"%ld", dispNum];
        self.label.text = str;
    }
}

- (IBAction)oneTouch:(id)sender {
    [self setNum:1];
}

- (IBAction)twoTouch:(id)sender {
    [self setNum:2];
}

- (IBAction)threeTouch:(id)sender {
    [self setNum:3];
}

- (IBAction)fourTouch:(id)sender {
    [self setNum:4];
}

- (IBAction)fiveTouch:(id)sender {
    [self setNum:5];
}

- (IBAction)sixTouch:(id)sender {
    [self setNum:6];
}

- (IBAction)sevenTouch:(id)sender {
    [self setNum:7];
}

- (IBAction)eightTouch:(id)sender {
    [self setNum:8];
}

- (IBAction)nineTouch:(id)sender {
    [self setNum:9];
}

- (IBAction)zeroTouch:(id)sender {
    [self setNum:0];
}

- (IBAction)plusTouch:(id)sender {
    op = @"plus";
    beforeNum = dispNum;
    dispNum = 0;
    self.label.text = @"0";
}

- (IBAction)equalTouch:(id)sender {
    SWITCH (op) {
        CASE (@"plus") {
            dispNum = beforeNum + dispNum;
            break;
        }
        CASE (@"minus") {
            dispNum = beforeNum - dispNum;
            break;
        }
        CASE (@"mul") {
            dispNum = beforeNum * dispNum;
            break;
        }
        CASE (@"div") {
            dispNum = beforeNum / dispNum;
            break;
        }
        DEFAULT {
            return;
            break;
        }
    }
    NSString *str = [NSString stringWithFormat:@"%ld", dispNum];
    self.label.text = str;
    beforeNum = 0;
}

- (IBAction)minusTouch:(id)sender {
    op = @"minus";
    beforeNum = dispNum;
    dispNum = 0;
    self.label.text = @"0";
}

- (IBAction)mulTouch:(id)sender {
    op = @"mul";
    beforeNum = dispNum;
    dispNum = 0;
    self.label.text = @"0";
}

- (IBAction)divTouch:(id)sender {
    op = @"div";
    beforeNum = dispNum;
    dispNum = 0;
    self.label.text = @"0";
}

- (IBAction)ClearTouch:(id)sender {
    op = @"";
    beforeNum = 0;
    dispNum = 0;
    self.label.text = @"0";
}
@end
