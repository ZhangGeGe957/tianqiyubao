//
//  MainTableViewCell.m
//  天气预报仿写
//
//  Created by 张佳乔 on 2021/8/8.
//

#import "MainTableViewCell.h"

#define width [UIScreen mainScreen].bounds.size.width
#define height [UIScreen mainScreen].bounds.size.height

@implementation MainTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if ([self.reuseIdentifier  isEqualToString:@"main"]) {
        self.timeLabel = [[UILabel alloc] init];
        self.timeLabel.font = [UIFont systemFontOfSize:18];
        self.timeLabel.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:self.timeLabel];
        
        self.cityLabel = [[UILabel alloc] init];
        self.cityLabel.font = [UIFont systemFontOfSize:30];
        self.cityLabel.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:self.cityLabel];
        
        self.temperatureLabel = [[UILabel alloc] init];
        self.temperatureLabel.font = [UIFont systemFontOfSize:50];
        self.temperatureLabel.textAlignment = NSTextAlignmentRight;
        [self.contentView addSubview:self.temperatureLabel];
    } else if ([self.reuseIdentifier isEqualToString:@"head"]) {
        self.timeLabel = [[UILabel alloc] init];
        self.timeLabel.font = [UIFont systemFontOfSize:30];
        self.timeLabel.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:self.timeLabel];
        
        self.cityLabel = [[UILabel alloc] init];
        self.cityLabel.font = [UIFont systemFontOfSize:18];
        self.cityLabel.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:self.cityLabel];
        
        self.temperatureLabel = [[UILabel alloc] init];
        self.temperatureLabel.font = [UIFont systemFontOfSize:50];
        self.temperatureLabel.textAlignment = NSTextAlignmentRight;
        [self.contentView addSubview:self.temperatureLabel];
    } else if ([self.reuseIdentifier isEqualToString:@"button"]) {
        self.button = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:self.button];
    }
    
    return self;
}

- (void)layoutSubviews {
    if ([self.reuseIdentifier isEqualToString:@"main"]) {
        self.timeLabel.frame = CGRectMake(10, 5, 100, 30);
        self.cityLabel.frame = CGRectMake(10, 30, 300, 45);
        self.temperatureLabel.frame = CGRectMake(width - 220, 0, 200, 80);
    } else if ([self.reuseIdentifier isEqualToString:@"head"]) {
        self.timeLabel.frame = CGRectMake(10, 30, 300, 45);
        self.cityLabel.frame = CGRectMake(10, 5, 100, 30);
        self.temperatureLabel.frame = CGRectMake(width - 220, 0, 200, 80);
    } else if ([self.reuseIdentifier isEqualToString:@"button"]) {
        self.button.frame = CGRectMake(width - 50, 10, 32, 32);
    }
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
