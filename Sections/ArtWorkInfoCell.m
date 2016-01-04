//
//  ArtWorkInfoCell.m
//  Sections
//
//  Created by star on 16/1/4.
//  Copyright © 2016年 Zeze. All rights reserved.
//

#import "ArtWorkInfoCell.h"
@interface ArtWorkInfoCell ()
@property (weak, nonatomic) IBOutlet UIImageView *leftImage;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UITextView *artWorkInfo;

@property (weak, nonatomic) IBOutlet UIButton *btn;
@end
@implementation ArtWorkInfoCell

- (void)awakeFromNib {
    // Initialization code
    self.artWorkInfo.editable = NO;
}

- (void)configCell
{
    /*
     如果你能指望投资者救你，那么即使缺省死亡也是安全的。作为一条公理，你要知道投资人的兴趣是增长的函数。如果你有陡峭的收入增长，比如每年6 倍，你就可以指望投资者是有兴趣的，即使你不赚钱。 但是，投资者是善变的，你永远不要指望太多。有时候，即使你的增长是显著的，业务的其他方面也会吓跑投资人。因此，即使你的增长再好，你永远也只能把融资作为 A 计划。你始终应该有一个 B 计划：你应该确切的知道（最好写下来），如果无法募集更多的资金，你需要做什么才能生存下来。同时，要确切的知道，如果 A 计划行不通，何时应该切换到 B 计划。
     在任何情况下，快速增长与低成本运营远非很多创始人认为的那样非此即彼。实际情况是，一个创业公司花费多少和它增长有多快之间的关系少的惊人。当一个创业公司快速增长的时候，通常是因为产品打动了用户神经，直接击中了用户的一些大的需求。当创业公司花费巨大的时候，通常是因为产品开发或销售很花钱，或仅仅纯属浪费。
     */
    NSString *infoText = @"如果你能指望投资者救你，那么即使缺省死亡也是安全的。作为一条公理，你要知道投资人的兴趣是增长的函数。如果你有陡峭的收入增长，比如每年6 倍，你就可以指望投资者是有兴趣的，即使你不赚钱。 但是，投资者是善变的，你永远不要指望太多。有时候，即使你的增长是显著的，业务的其他方面也会吓跑投资人。因此，即使你的增长再好，你永远也只能把融资作为 A 计划。你始终应该有一个 B 计划：你应该确切的知道（最好写下来），如果无法募集更多的资金，你需要做什么才能生存下来。同时，要确切的知道，如果 A 计划行不通，何时应该切换到 B 计划。在任何情况下，快速增长与低成本运营远非很多创始人认为的那样非此即彼。实际情况是，一个创业公司花费多少和它增长有多快之间的关系少的惊人。当一个创业公司快速增长的时候，通常是因为产品打动了用户神经，直接击中了用户的一些大的需求。当创业公司花费巨大的时候，通常是因为产品开发或销售很花钱，或仅仅纯属浪费。如果你能指望投资者救你，那么即使缺省死亡也是安全的。作为一条公理，你要知道投资人的兴趣是增长的函数。如果你有陡峭的收入增长，比如每年6 倍，你就可以指望投资者是有兴趣的，即使你不赚钱。 但是，投资者是善变的，你永远不要指望太多。有时候，即使你的增长是显著的，业务的其他方面也会吓跑投资人。因此，即使你的增长再好，你永远也只能把融资作为 A 计划。你始终应该有一个 B 计划：你应该确切的知道（最好写下来），如果无法募集更多的资金，你需要做什么才能生存下来。同时，要确切的知道，如果 A 计划行不通，何时应该切换到 B 计划。在任何情况下，快速增长与低成本运营远非很多创始人认为的那样非此即彼。实际情况是，一个创业公司花费多少和它增长有多快之间的关系少的惊人。当一个创业公司快速增长的时候，通常是因为产品打动了用户神经，直接击中了用户的一些大的需求。当创业公司花费巨大的时候，通常是因为产品开发或销售很花钱，或仅仅纯属浪费。";
    
    self.artWorkInfo.text = infoText;
    
    
}
- (IBAction)btnClick:(UIButton *)sender {
    
    if([self.delegate respondsToSelector:@selector(isShowAllTextWithBtn:)]){
        [self.delegate isShowAllTextWithBtn:sender];
    }
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
