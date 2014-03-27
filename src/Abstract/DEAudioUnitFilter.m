//
//  DEAudioUnitFilter.m
//  DEAmazingAudioEngineTest
//
//  Created by Jeremy Flores on 4/25/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "DEAudioUnitFilter.h"


static double getAudioUnitParameterValue(AudioUnit audioUnit, AudioUnitParameterID parameterType) {
    AudioUnitParameterValue value = 0.0;
    OSStatus status = noErr;
    status = AudioUnitGetParameter(audioUnit,
                                   parameterType,
                                   kAudioUnitScope_Global,
                                   0,
                                   &value);
    
    if (status == noErr) {
        return value;
    }
    else {
        return 0.0;
    }
}

static void setAudioUnitParameterValue(AudioUnit audioUnit, AudioUnitParameterID parameterType, double value) {
    OSStatus status = noErr;
    status = AudioUnitSetParameter(audioUnit,
                                   parameterType,
                                   kAudioUnitScope_Global,
                                   0,
                                   value,
                                   0);
}



@implementation DEAudioUnitFilter

+(OSType)audioUnitType {
    return -1;
}

+(OSType)audioUnitSubtype {
    return -1;
}

+(instancetype)filterWithAudioController:(AEAudioController *)controller {
    OSType audioUnitType = [[self class] audioUnitType];

    NSAssert(audioUnitType != -1, @"You must define the audioUnitType in a subclass");

    OSType audioUnitSubtype = [[self class] audioUnitSubtype];

    NSAssert(audioUnitSubtype != -1, @"You must define the audioUnitSubtype in a subclass");

    AudioComponentDescription component = AEAudioComponentDescriptionMake(kAudioUnitManufacturer_Apple,
                                                                          audioUnitType,
                                                                          audioUnitSubtype);
    
    NSError *error = nil;
    
    id filter = [[[self class] alloc] initWithComponentDescription: component
                                                   audioController: controller
                                                             error: &error];
    
    if (error) {
        return nil;
    }
    else {
        return filter;
    }
}

#pragma mark - Parameter Values

-(double) getParameterValueForId:(AudioUnitParameterID) parameterId {
    return getAudioUnitParameterValue(self.audioUnit, parameterId);
}

-(void) setParameterValue: (double)value
                    forId: (AudioUnitParameterID) parameterId {
    setAudioUnitParameterValue(self.audioUnit,
                               parameterId,
                               value);
}

@end
