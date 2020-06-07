//
//  Download.m
//  itunes-api-objc
//
//  Created by Tassio Marcos Rocha on 06/06/20.
//  Copyright © 2020 Tassio Marcos Rocha. All rights reserved.
//

#import "Download.h"

@implementation Download
- (instancetype)initWithTrack:(Track *)track {
  if(self = [super init]) {
    _track = track;
  }
  
  return self;
}
@end
