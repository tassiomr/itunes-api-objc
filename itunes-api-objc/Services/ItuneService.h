//
//  ItuneService.h
//  itunes-api-objc
//
//  Created by Tassio Marcos Rocha on 06/06/20.
//  Copyright © 2020 Tassio Marcos Rocha. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ItuneService : NSObject
@property (nonatomic, nonnull) NSString *errorMessage;
-(NSMutableArray<NSString *> *) getItunesMusic: (NSString *) query;
@end

NS_ASSUME_NONNULL_END
