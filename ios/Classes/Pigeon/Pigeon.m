// Autogenerated from Pigeon (v4.2.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon
#import "Pigeon.h"
#import <Flutter/Flutter.h>

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSDictionary<NSString *, id> *wrapResult(id result, FlutterError *error) {
  NSDictionary *errorDict = (NSDictionary *)[NSNull null];
  if (error) {
    errorDict = @{
        @"code": (error.code ?: [NSNull null]),
        @"message": (error.message ?: [NSNull null]),
        @"details": (error.details ?: [NSNull null]),
        };
  }
  return @{
      @"result": (result ?: [NSNull null]),
      @"error": errorDict,
      };
}
static id GetNullableObject(NSDictionary* dict, id key) {
  id result = dict[key];
  return (result == [NSNull null]) ? nil : result;
}
static id GetNullableObjectAtIndex(NSArray* array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}


@interface PreviewSize ()
+ (PreviewSize *)fromMap:(NSDictionary *)dict;
+ (nullable PreviewSize *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface ExifPreferences ()
+ (ExifPreferences *)fromMap:(NSDictionary *)dict;
+ (nullable ExifPreferences *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface VideoOptions ()
+ (VideoOptions *)fromMap:(NSDictionary *)dict;
+ (nullable VideoOptions *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface PigeonSensorTypeDevice ()
+ (PigeonSensorTypeDevice *)fromMap:(NSDictionary *)dict;
+ (nullable PigeonSensorTypeDevice *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end

@implementation PreviewSize
+ (instancetype)makeWithWidth:(NSNumber *)width
    height:(NSNumber *)height {
  PreviewSize* pigeonResult = [[PreviewSize alloc] init];
  pigeonResult.width = width;
  pigeonResult.height = height;
  return pigeonResult;
}
+ (PreviewSize *)fromMap:(NSDictionary *)dict {
  PreviewSize *pigeonResult = [[PreviewSize alloc] init];
  pigeonResult.width = GetNullableObject(dict, @"width");
  NSAssert(pigeonResult.width != nil, @"");
  pigeonResult.height = GetNullableObject(dict, @"height");
  NSAssert(pigeonResult.height != nil, @"");
  return pigeonResult;
}
+ (nullable PreviewSize *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [PreviewSize fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"width" : (self.width ?: [NSNull null]),
    @"height" : (self.height ?: [NSNull null]),
  };
}
@end

@implementation ExifPreferences
+ (instancetype)makeWithSaveGPSLocation:(NSNumber *)saveGPSLocation {
  ExifPreferences* pigeonResult = [[ExifPreferences alloc] init];
  pigeonResult.saveGPSLocation = saveGPSLocation;
  return pigeonResult;
}
+ (ExifPreferences *)fromMap:(NSDictionary *)dict {
  ExifPreferences *pigeonResult = [[ExifPreferences alloc] init];
  pigeonResult.saveGPSLocation = GetNullableObject(dict, @"saveGPSLocation");
  NSAssert(pigeonResult.saveGPSLocation != nil, @"");
  return pigeonResult;
}
+ (nullable ExifPreferences *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [ExifPreferences fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"saveGPSLocation" : (self.saveGPSLocation ?: [NSNull null]),
  };
}
@end

@implementation VideoOptions
+ (instancetype)makeWithFileType:(NSString *)fileType
    codec:(NSString *)codec {
  VideoOptions* pigeonResult = [[VideoOptions alloc] init];
  pigeonResult.fileType = fileType;
  pigeonResult.codec = codec;
  return pigeonResult;
}
+ (VideoOptions *)fromMap:(NSDictionary *)dict {
  VideoOptions *pigeonResult = [[VideoOptions alloc] init];
  pigeonResult.fileType = GetNullableObject(dict, @"fileType");
  NSAssert(pigeonResult.fileType != nil, @"");
  pigeonResult.codec = GetNullableObject(dict, @"codec");
  NSAssert(pigeonResult.codec != nil, @"");
  return pigeonResult;
}
+ (nullable VideoOptions *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [VideoOptions fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"fileType" : (self.fileType ?: [NSNull null]),
    @"codec" : (self.codec ?: [NSNull null]),
  };
}
@end

@implementation PigeonSensorTypeDevice
+ (instancetype)makeWithSensorType:(PigeonSensorType)sensorType
    name:(NSString *)name
    iso:(NSNumber *)iso
    flashAvailable:(NSNumber *)flashAvailable
    uid:(NSString *)uid {
  PigeonSensorTypeDevice* pigeonResult = [[PigeonSensorTypeDevice alloc] init];
  pigeonResult.sensorType = sensorType;
  pigeonResult.name = name;
  pigeonResult.iso = iso;
  pigeonResult.flashAvailable = flashAvailable;
  pigeonResult.uid = uid;
  return pigeonResult;
}
+ (PigeonSensorTypeDevice *)fromMap:(NSDictionary *)dict {
  PigeonSensorTypeDevice *pigeonResult = [[PigeonSensorTypeDevice alloc] init];
  pigeonResult.sensorType = [GetNullableObject(dict, @"sensorType") integerValue];
  pigeonResult.name = GetNullableObject(dict, @"name");
  NSAssert(pigeonResult.name != nil, @"");
  pigeonResult.iso = GetNullableObject(dict, @"iso");
  NSAssert(pigeonResult.iso != nil, @"");
  pigeonResult.flashAvailable = GetNullableObject(dict, @"flashAvailable");
  NSAssert(pigeonResult.flashAvailable != nil, @"");
  pigeonResult.uid = GetNullableObject(dict, @"uid");
  NSAssert(pigeonResult.uid != nil, @"");
  return pigeonResult;
}
+ (nullable PigeonSensorTypeDevice *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [PigeonSensorTypeDevice fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"sensorType" : @(self.sensorType),
    @"name" : (self.name ?: [NSNull null]),
    @"iso" : (self.iso ?: [NSNull null]),
    @"flashAvailable" : (self.flashAvailable ?: [NSNull null]),
    @"uid" : (self.uid ?: [NSNull null]),
  };
}
@end

@interface CameraInterfaceCodecReader : FlutterStandardReader
@end
@implementation CameraInterfaceCodecReader
- (nullable id)readValueOfType:(UInt8)type 
{
  switch (type) {
    case 128:     
      return [ExifPreferences fromMap:[self readValue]];
    
    case 129:     
      return [PigeonSensorTypeDevice fromMap:[self readValue]];
    
    case 130:     
      return [PreviewSize fromMap:[self readValue]];
    
    case 131:     
      return [PreviewSize fromMap:[self readValue]];
    
    case 132:     
      return [VideoOptions fromMap:[self readValue]];
    
    default:    
      return [super readValueOfType:type];
    
  }
}
@end

@interface CameraInterfaceCodecWriter : FlutterStandardWriter
@end
@implementation CameraInterfaceCodecWriter
- (void)writeValue:(id)value 
{
  if ([value isKindOfClass:[ExifPreferences class]]) {
    [self writeByte:128];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[PigeonSensorTypeDevice class]]) {
    [self writeByte:129];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[PreviewSize class]]) {
    [self writeByte:130];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[PreviewSize class]]) {
    [self writeByte:131];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[VideoOptions class]]) {
    [self writeByte:132];
    [self writeValue:[value toMap]];
  } else 
{
    [super writeValue:value];
  }
}
@end

@interface CameraInterfaceCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation CameraInterfaceCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[CameraInterfaceCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[CameraInterfaceCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *CameraInterfaceGetCodec() {
  static dispatch_once_t sPred = 0;
  static FlutterStandardMessageCodec *sSharedObject = nil;
  dispatch_once(&sPred, ^{
    CameraInterfaceCodecReaderWriter *readerWriter = [[CameraInterfaceCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}


void CameraInterfaceSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<CameraInterface> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setupCamera"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setupCameraSensor:aspectRatio:zoom:flashMode:captureMode:enableImageStream:exifPreferences:completion:)], @"CameraInterface api (%@) doesn't respond to @selector(setupCameraSensor:aspectRatio:zoom:flashMode:captureMode:enableImageStream:exifPreferences:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_sensor = GetNullableObjectAtIndex(args, 0);
        NSString *arg_aspectRatio = GetNullableObjectAtIndex(args, 1);
        NSNumber *arg_zoom = GetNullableObjectAtIndex(args, 2);
        NSString *arg_flashMode = GetNullableObjectAtIndex(args, 3);
        NSString *arg_captureMode = GetNullableObjectAtIndex(args, 4);
        NSNumber *arg_enableImageStream = GetNullableObjectAtIndex(args, 5);
        ExifPreferences *arg_exifPreferences = GetNullableObjectAtIndex(args, 6);
        [api setupCameraSensor:arg_sensor aspectRatio:arg_aspectRatio zoom:arg_zoom flashMode:arg_flashMode captureMode:arg_captureMode enableImageStream:arg_enableImageStream exifPreferences:arg_exifPreferences completion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.checkPermissions"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(checkPermissionsWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(checkPermissionsWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSArray<NSString *> *output = [api checkPermissionsWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.requestPermissions"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(requestPermissionsWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(requestPermissionsWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSArray<NSString *> *output = [api requestPermissionsWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.getPreviewTextureId"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getPreviewTextureIdWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(getPreviewTextureIdWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSNumber *output = [api getPreviewTextureIdWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.takePhoto"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(takePhotoPath:completion:)], @"CameraInterface api (%@) doesn't respond to @selector(takePhotoPath:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_path = GetNullableObjectAtIndex(args, 0);
        [api takePhotoPath:arg_path completion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.recordVideo"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(recordVideoPath:options:error:)], @"CameraInterface api (%@) doesn't respond to @selector(recordVideoPath:options:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_path = GetNullableObjectAtIndex(args, 0);
        VideoOptions *arg_options = GetNullableObjectAtIndex(args, 1);
        FlutterError *error;
        [api recordVideoPath:arg_path options:arg_options error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.pauseVideoRecording"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(pauseVideoRecordingWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(pauseVideoRecordingWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api pauseVideoRecordingWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.resumeVideoRecording"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(resumeVideoRecordingWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(resumeVideoRecordingWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api resumeVideoRecordingWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.receivedImageFromStream"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(receivedImageFromStreamWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(receivedImageFromStreamWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api receivedImageFromStreamWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.stopRecordingVideo"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(stopRecordingVideoWithCompletion:)], @"CameraInterface api (%@) doesn't respond to @selector(stopRecordingVideoWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api stopRecordingVideoWithCompletion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.getFrontSensors"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getFrontSensorsWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(getFrontSensorsWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSArray<PigeonSensorTypeDevice *> *output = [api getFrontSensorsWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.getBackSensors"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getBackSensorsWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(getBackSensorsWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSArray<PigeonSensorTypeDevice *> *output = [api getBackSensorsWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.start"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(startWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(startWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSNumber *output = [api startWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.stop"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(stopWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(stopWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSNumber *output = [api stopWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setFlashMode"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setFlashModeMode:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setFlashModeMode:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_mode = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setFlashModeMode:arg_mode error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.handleAutoFocus"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(handleAutoFocusWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(handleAutoFocusWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api handleAutoFocusWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.focusOnPoint"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(focusOnPointPreviewSize:x:y:error:)], @"CameraInterface api (%@) doesn't respond to @selector(focusOnPointPreviewSize:x:y:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PreviewSize *arg_previewSize = GetNullableObjectAtIndex(args, 0);
        NSNumber *arg_x = GetNullableObjectAtIndex(args, 1);
        NSNumber *arg_y = GetNullableObjectAtIndex(args, 2);
        FlutterError *error;
        [api focusOnPointPreviewSize:arg_previewSize x:arg_x y:arg_y error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setZoom"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setZoomZoom:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setZoomZoom:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_zoom = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setZoomZoom:arg_zoom error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setSensor"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setSensorSensor:deviceId:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setSensorSensor:deviceId:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_sensor = GetNullableObjectAtIndex(args, 0);
        NSString *arg_deviceId = GetNullableObjectAtIndex(args, 1);
        FlutterError *error;
        [api setSensorSensor:arg_sensor deviceId:arg_deviceId error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setCorrection"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setCorrectionBrightness:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setCorrectionBrightness:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_brightness = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setCorrectionBrightness:arg_brightness error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.getMaxZoom"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getMaxZoomWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(getMaxZoomWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSNumber *output = [api getMaxZoomWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setCaptureMode"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setCaptureModeMode:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setCaptureModeMode:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_mode = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setCaptureModeMode:arg_mode error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setRecordingAudioMode"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setRecordingAudioModeEnableAudio:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setRecordingAudioModeEnableAudio:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_enableAudio = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setRecordingAudioModeEnableAudio:arg_enableAudio error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.availableSizes"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(availableSizesWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(availableSizesWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSArray<PreviewSize *> *output = [api availableSizesWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.refresh"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(refreshWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(refreshWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api refreshWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.getEffectivPreviewSize"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getEffectivPreviewSizeWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(getEffectivPreviewSizeWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        PreviewSize *output = [api getEffectivPreviewSizeWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setPhotoSize"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setPhotoSizeSize:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setPhotoSizeSize:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PreviewSize *arg_size = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setPhotoSizeSize:arg_size error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setPreviewSize"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setPreviewSizeSize:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setPreviewSizeSize:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PreviewSize *arg_size = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setPreviewSizeSize:arg_size error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setAspectRatio"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setAspectRatioAspectRatio:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setAspectRatioAspectRatio:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_aspectRatio = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setAspectRatioAspectRatio:arg_aspectRatio error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setupImageAnalysisStream"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setupImageAnalysisStreamFormat:width:maxFramesPerSecond:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setupImageAnalysisStreamFormat:width:maxFramesPerSecond:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_format = GetNullableObjectAtIndex(args, 0);
        NSNumber *arg_width = GetNullableObjectAtIndex(args, 1);
        NSNumber *arg_maxFramesPerSecond = GetNullableObjectAtIndex(args, 2);
        FlutterError *error;
        [api setupImageAnalysisStreamFormat:arg_format width:arg_width maxFramesPerSecond:arg_maxFramesPerSecond error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setExifPreferences"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setExifPreferencesExifPreferences:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setExifPreferencesExifPreferences:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        ExifPreferences *arg_exifPreferences = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setExifPreferencesExifPreferences:arg_exifPreferences error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
}
