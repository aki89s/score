//
//  ScoreView.h
//  score
//
//  Created by akinori89 on 2014/03/23.
//
//

#import <UIKit/UIKit.h>
#import "BaseView.h"

@interface ScoreView : BaseView

@property (nonatomic) UILabel   *scoreLabel;
@property (nonatomic) UIButton  *plusButton;
@property (nonatomic) UIButton  *minusButton;
@property (nonatomic) UIButton  *plus10Button;
@property (nonatomic) UIButton  *minus10Button;
@property (nonatomic) NSInteger score;

-(void)increaseScore;
-(void)decreaseScore;
-(void)increaseScore10;
-(void)decreaseScore10;
-(void)updateScore;

@end