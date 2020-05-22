//
//  AlbumListController.h
//  XYAlbum
//
//  Created by liuxy on 2020/5/21.
//  Copyright © 2020 Golemon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYAlbumManagerDelegate.h"

NS_ASSUME_NONNULL_BEGIN


@interface AlbumListController : UIViewController

@property (nonatomic, weak) id <XYAlbumManagerDelegate> delegate;

@end



#pragma mark - UITableViewCell
@interface AlbumListCell : UITableViewCell

@property (nonatomic, strong) UIImageView *avatarImageView;

@property (nonatomic, strong) UILabel *nameLabel;

@end
NS_ASSUME_NONNULL_END
