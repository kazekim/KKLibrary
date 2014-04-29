Pod::Spec.new do |s|
    s.name         = "KKLibrary"
    s.version      = "1.0.1"
    s.summary      = "Library Kit for xCode project by Jirawat Harnsiriwatanakit"
    s.homepage     = "https://github.com/kazekim/KKLibrary/"
    s.license      = { :type => 'MIT', :text => 'The KKLibrary source code is copyright 2014 Jirawat Harnsiriwatanakit and is licensed under the terms of the MIT license.' }
    s.author       = { "Jirawat Harnsiriwatanakit" => "jirawat.h@kazekim.com" }
    s.platform     = :ios, '7.0'
    s.source       = { :git => "https://github.com/kazekim/KKLibrary" }
    s.source_files = 'Classes', 'KKLibrary/**/*.{h,m}'
    s.framework    = 'UIKit'
    s.requires_arc = true

end
