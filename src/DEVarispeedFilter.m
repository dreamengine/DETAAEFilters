//
//  DEVarispeedFilter.m
//  DEAmazingAudioEngineTest
//
//  Created by Jeremy Flores on 4/26/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "DEVarispeedFilter.h"

@implementation DEVarispeedFilter

+(OSType)audioUnitType {
    return kAudioUnitType_FormatConverter;
}

+(OSType)audioUnitSubtype {
    return kAudioUnitSubType_Varispeed;
}


#pragma mark - Getters

-(double)playbackRate {
    return [self getParameterValueForId:kVarispeedParam_PlaybackRate];
}

-(double)playbackCents {
    return [self getParameterValueForId:kVarispeedParam_PlaybackCents];
}


#pragma mark - Setters

-(void)setPlaybackRate:(double)playbackRate {
    [self setParameterValue: playbackRate
                      forId: kVarispeedParam_PlaybackRate];
}

-(void)setPlaybackCents:(double)playbackCents {
    [self setParameterValue: playbackCents
                      forId: kVarispeedParam_PlaybackCents];
}

@end
