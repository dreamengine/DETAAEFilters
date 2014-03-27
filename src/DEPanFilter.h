//
//  DEPanFilter.h
//  Praxis Beats
//
//  Created by Jeremy Flores on 6/2/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AEAudioController.h"

@interface DEPanFilter : NSObject<AEAudioFilter>

// range is from -1.f to 1.f. Default is 0.f.
@property (nonatomic) float pan;

@end
