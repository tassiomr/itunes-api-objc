//
//  Track.m
//  itunes-api-objc
//
//  Created by Tassio Marcos Rocha on 06/06/20.
//  Copyright © 2020 Tassio Marcos Rocha. All rights reserved.
//

#import "Track.h"

@implementation Track
- (instancetype)initWithName:(NSString *)name artist:(NSString *)artist index:(NSInteger *)index previewURL:(NSURL *)previewURL {
  if(self = [super init]) {
    _name = name;
    _artist = artist;
    _index = index;
    _previewURL = previewURL;
    _downloaded = FALSE;
  }
  
  return self;
}
@end
