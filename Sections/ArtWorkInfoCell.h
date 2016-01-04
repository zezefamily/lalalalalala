//
//  ArtWorkInfoCell.h
//  Sections
//
//  Created by star on 16/1/4.
//  Copyright © 2016年 Zeze. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ArtWorkInfoCellDelegate <NSObject>

@optional
- (void)isShowAllTextWithBtn:(UIButton *)btn;

@end

@interface ArtWorkInfoCell : UITableViewCell

@property (nonatomic,weak) id <ArtWorkInfoCellDelegate> delegate;
- (void)configCell;

@end
