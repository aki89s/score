//
//  ViewController.m
//  score
//
//  Created by akinori89 on 2014/03/22.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

  _scoreViewArray = [NSMutableArray array];
  for (int i=0; i<5; i++) {
    ScoreView *scoreView = [ScoreView new];
    [_scoreViewArray addObject:scoreView];
  }
  //_scoreView = [ScoreView new];
  int i = 0;
  for (ScoreView *s in _scoreViewArray) {
    int x = !(i%2) ? 10 : 168 ;
    int y = ((i/2) * 158) + 30 ;
    [s setFrame:CGRectMake(x, y, s.frame.size.width, s.frame.size.height)];
    [self.view addSubview:s];
    i++;
  }
  i = 0;
  for (UIColor *color in @[[UIColor redColor], [UIColor blueColor], [UIColor greenColor], [UIColor yellowColor], [UIColor grayColor]]) {
    [_scoreViewArray[i] setBackgroundColor:color];
    i++;
  }
  
  BaseButton *resetButton = [BaseButton buttonWithType:UIButtonTypeSystem];
  [resetButton setTitle:@"Reset" forState:UIControlStateNormal];
  [resetButton setFrame:CGRectMake(168, 346, 148, 30)];
  [resetButton setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.5f]];
  [resetButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
  [resetButton addTarget:self action:@selector(resetButtonPushed:) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:resetButton];
}

- (void)resetButtonPushed:(UIButton*)button{
  for (ScoreView *s in _scoreViewArray) {
    [s.scoreLabel setText:@"0"];
  }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end