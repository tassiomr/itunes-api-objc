//
//  Track.h
//  itunes-api-objc
//
//  Created by Tassio Marcos Rocha on 06/06/20.
//  Copyright © 2020 Tassio Marcos Rocha. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Track : NSObject
@property (nonnull, nonatomic) NSString *name;
@property (nonnull, nonatomic) NSString *artist;
@property (nonnull, nonatomic) NSInteger *index;
@property (nonnull, nonatomic) NSURL *previewURL;
@property (nonnull, nonatomic) BOOL *downloaded;

-(instancetype) initWithName: (NSString *) name artist: (NSString *) artist index: (NSInteger *) index previewURL: (NSURL *) previewURL;
@end

NS_ASSUME_NONNULL_END
