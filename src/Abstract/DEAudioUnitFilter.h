//
//  DEAudioUnitFilter.h
//  DEAmazingAudioEngineTest
//
//  Created by Jeremy Flores on 4/25/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AEAudioUnitFilter.h"

@class AEAudioController;

@interface DEAudioUnitFilter : AEAudioUnitFilter

// this will be overridden by subclasses
+(OSType)audioUnitType;

// this will be overridden by subclasses
+(OSType)audioUnitSubtype;

+(instancetype)filterWithAudioController:(AEAudioController *)controller;


// these should only be used by subclasses. Use the properties instead to get and set values.
-(double) getParameterValueForId:(AudioUnitParameterID) parameterId;

-(void) setParameterValue: (double)value
                    forId: (AudioUnitParameterID) parameterId;

@end
