Pod::Spec.new do |s|
    s.name         = "DynamicMobileVLCKit"
    s.version      = "3.3.13"
    s.summary      = "MobileVLCKit is an Objective-C wrapper for libvlc's external interface on iOS."
    s.homepage     = 'https://wiki.videolan.org/VLCKit/'
    s.license      = {
      :type => 'LGPL v2.1', :file => 'LICENSE'
    }
    s.authors      = 'Pierre d\'Herbemont', { 'Felix Paul Kühne' => 'fkuehne@videolan.org' }
    s.source       = {
       :http => "https://raw.githubusercontent.com/Dimon70007/DynamicMobileVLCKit/#{s.version}/DynamicMobileVLCKit.zip"
     }
    s.platform     = :ios
    s.public_header_files = "DynamicMobileVLCKit/DynamicMobileVLCKit.framework/Headers/*.h"
    s.source_files = "DynamicMobileVLCKit/DynamicMobileVLCKit.framework/Headers/*.h"
    s.vendored_frameworks = "DynamicMobileVLCKit/DynamicMobileVLCKit.framework"
    s.preserve_paths = 'DynamicMobileVLCKit*'
    
    # vlc kit dependencies
    s.frameworks = "QuartzCore", "CoreText", "AVFoundation", "Security", "CFNetwork", "AudioToolbox", "OpenGLES", "CoreGraphics", "VideoToolbox", "CoreMedia"
    s.libraries = "c++", "xml2", "z", "bz2", "iconv"
    s.xcconfig = {
      'CLANG_CXX_LANGUAGE_STANDARD' => "c++11",
      'CLANG_CXX_LIBRARY' => "libc++"
    }

    s.ios.deployment_target  = '9.3'
end
