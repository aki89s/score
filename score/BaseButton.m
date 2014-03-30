//
//  BaseButton.m
//  score
//
//  Created by akinori89 on 2014/03/24.
//
//

#import "BaseButton.h"

@implementation BaseButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
      [self.layer setCornerRadius:4.0f];
      [self.layer setShadowOffset:CGSizeMake(2, 2)];
      [self.layer setShadowOpacity:0.3f];
    }
    return self;
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