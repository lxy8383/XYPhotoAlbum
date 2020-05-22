//
//  ALbumAssetModel.h
//  XYAlbum
//
//  Created by liuxy on 2020/5/21.
//  Copyright © 2020 Golemon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Photos/Photos.h>
NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    ImageAssetModelTypePhoto,
    ImageAssetModelTypeVideo,
    ImageAssetModelTypelivePhoto,
    ImageAssetModelTypePhotoGif
} ImageAssetModelType;
@interface ALbumAssetModel : NSObject

@property (nonatomic, strong) PHAssetCollection *albumAsset;   //相册资源
@property (nonatomic, copy) NSArray *imageModelsArr;    //当前相册包含的资源
@property (nonatomic, strong) NSString *albumId; ///相册id
@property (nonatomic, strong) NSString *albumName; ///相册名字
@property (nonatomic, strong) UIImage *albumImage; ///相册封面图片
@property (nonatomic, assign) NSInteger count;     ///相册包含的资源数
@property (nonatomic, assign) BOOL selected ;    /// 当前相册是否被选中



@end


@interface ImageAssetModel : NSObject
@property (nonatomic, strong) UIImage *smallImage;    //缩略图
@property (nonatomic, strong) NSString *imageAssetName;   //资源名称
@property (nonatomic, strong) NSString *photoPath;    // 资源路径
@property (nonatomic, strong) UIImage *hightImage;    //高清图
@property (nonatomic, strong) UIImage *originImage;   //原图
@property (nonatomic, strong) PHAsset * imageAsset;   //相册资源
@property (nonatomic, strong) NSString * imageId;       //图片id
@property (nonatomic, assign) CGSize imageSize;       //图片大小
@property (nonatomic, assign) BOOL selected;       //选择
@property (nonatomic, assign) ImageAssetModelType assetType;



@end

NS_ASSUME_NONNULL_END
