//
//  WYZTestViewWithXIB.m
//  WyzPodTest
//
//  Created by wangyuanzhi on 2022/2/17.
//

#import "WYZTestViewWithXIB.h"
#import "UIImageView+WebCache.h"
@interface WYZTestViewWithXIB()
@property (nonatomic, weak) IBOutlet UIImageView *imageView;
@end

@implementation WYZTestViewWithXIB

- (void)awakeFromNib {
    [super awakeFromNib];
}


- (void)showRemoteImageWithUrl:(NSString *)urlString {
    [self.imageView sd_setImageWithURL:[NSURL URLWithString:urlString]];
}
@end
