//
//  ZhihuLateStNews.h
//  First
//
//  Created by kuang on 2019/4/3.
//  Copyright © 2019 kuang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZhihuLateStNews : MTLModel<MTLJSONSerializing>

@property (nonatomic,copy) NSString *date;
@property (nonatomic,copy) NSString *stories;
@property (nonatomic,copy) NSString *topStories;

@end

NS_ASSUME_NONNULL_END
