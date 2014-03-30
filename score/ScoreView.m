//
//  ScoreView.m
//  score
//
//  Created by akinori89 on 2014/03/23.
//
//

#import "ScoreView.h"

@implementation ScoreView

- (id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    // Initialization code
    _scoreLabel = [UILabel new];
    _plusButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _plus10Button = [UIButton buttonWithType:UIButtonTypeSystem];
    _minusButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _minus10Button = [UIButton buttonWithType:UIButtonTypeSystem];
    
    [_scoreLabel setBackgroundColor:[UIColor whiteColor]];
    [_scoreLabel setTextAlignment:NSTextAlignmentCenter];
    [_scoreLabel setFont:[UIFont systemFontOfSize:15]];
    [_scoreLabel.layer setCornerRadius:4.0f];
    [_scoreLabel setText:@"0"];

    [_plusButton setTitle:@"+1" forState:UIControlStateNormal];
    [_plus10Button setTitle:@"+10" forState:UIControlStateNormal];
    [_minusButton setTitle:@"-1" forState:UIControlStateNormal];
    [_minus10Button setTitle:@"-10" forState:UIControlStateNormal];
    
    [_plusButton setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.4f]];
    [_plus10Button setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.4f]];
    [_minusButton setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.4f]];
    [_minus10Button setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.4f]];
    [_plusButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_plus10Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_minusButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_minus10Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

    [_scoreLabel    setFrame:CGRectMake(10, 10, 128, 20)];
    [_plusButton    setFrame:CGRectMake(10, 50, 59, 35)];
    [_plus10Button  setFrame:CGRectMake(79, 50, 59, 35)];
    [_minusButton   setFrame:CGRectMake(10, 98, 59, 35)];
    [_minus10Button setFrame:CGRectMake(79, 98, 59, 35)];
    
    [_plusButton addTarget:self action:@selector(increaseScore) forControlEvents:UIControlEventTouchUpInside];
    [_plus10Button addTarget:self action:@selector(increaseScore10) forControlEvents:UIControlEventTouchUpInside];
    [_minusButton addTarget:self action:@selector(decreaseScore) forControlEvents:UIControlEventTouchUpInside];
    [_minus10Button addTarget:self action:@selector(decreaseScore10) forControlEvents:UIControlEventTouchUpInside];

    [self addSubview:_scoreLabel];
    [self addSubview:_plusButton];
    [self addSubview:_plus10Button];
    [self addSubview:_minusButton];
    [self addSubview:_minus10Button];

    self.frame = CGRectMake(0, 0, 148, 148);
    
  }
  return self;
}

-(void)increaseScore{
  _score++;
  [self updateScore];
}

-(void)decreaseScore{
  _score--;
  [self updateScore];

}

-(void)increaseScore10{
  _score += 10;
  [self updateScore];
}

-(void)decreaseScore10{
  _score -= 10;
  [self updateScore];
}

-(void)updateScore{
  [_scoreLabel setText:[NSString stringWithFormat:@"%ld",(long)_score]];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end