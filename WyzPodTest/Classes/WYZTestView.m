//
//  WYZTestView.m
//  WyzPodTest_Example
//
//  Created by wangyuanzhi on 2022/2/16.
//  Copyright © 2022 vieri. All rights reserved.
//

#import "WYZTestView.h"
#import "Masonry.h"

@interface WYZTestView ()
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation WYZTestView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupView];
    }
    return self;
}


- (void)setupView {
    [self addSubview:self.imageView];
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self).insets(UIEdgeInsetsMake(10, 10, 10, 10));
    }];
}

- (UIImageView *)imageView {
    if (!_imageView) {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    }
    return _imageView;
}

#pragma mark - Public
- (void)showLocalImage {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    _imageView.image = [UIImage imageNamed:@"bigImage1" inBundle:bundle compatibleWithTraitCollection:nil];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
