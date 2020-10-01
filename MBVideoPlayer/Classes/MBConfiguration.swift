//
//  MBConfiguration.swift
//  MBVideoPlayer
//
//  Created by macadmin on 12/9/19.
//  Copyright © 2019 Muhammad Waqas. All rights reserved.
//

import Foundation

/// MBConfiguration: it controls player configuration .

public protocol MBConfiguration {
    var canShowVideoList: Bool { get }
    var canShowTime: Bool { get }
    var canShowPlayPause: Bool { get }
    var canShowTimeBar: Bool { get }
    var canShowFullScreenBtn: Bool { get }
    var canShowForwardBack: Bool { get }
    var canShowHeader: Bool { get }
    var canShowHeaderTitle: Bool { get }
    var canShowHeaderOption: Bool { get }
    var isShowOverlay: Bool { get set }
    var dimension: PlayerDimension { get }
    var seekDuration: Float64 { get }
}

public struct MainConfiguration: MBConfiguration {
    public var canShowVideoList = true
    public var canShowTime = true
    public var canShowPlayPause = true
    public var canShowTimeBar = true
    public var canShowFullScreenBtn = true
    public var canShowForwardBack = true
    public var canShowHeader = true
    public var canShowHeaderTitle = true
    public var canShowHeaderOption = true
    public var isShowOverlay: Bool = true
    public var dimension: PlayerDimension = .embed
    public var seekDuration: Float64 = 15.0
    
    
    public init(canShowVideoList: Bool = true, canShowTime: Bool = true, canShowPlayPause: Bool = true, canShowTimeBar: Bool = true, canShowFullScreenBtn: Bool = true, canShowForwardBack: Bool = true, canShowHeader: Bool = true, canShowHeaderTitle: Bool = true, canShowHeaderOption: Bool = true, isShowOverlay: Bool = true, dimension: PlayerDimension = .embed, seekDuration: Float64 = 15.0) {
        self.canShowVideoList = canShowVideoList
        self.canShowTime = canShowTime
        self.canShowPlayPause = canShowPlayPause
        self.canShowTimeBar = canShowTimeBar
        self.canShowFullScreenBtn = canShowFullScreenBtn
        self.canShowForwardBack = canShowForwardBack
        self.canShowHeader = canShowHeader
        self.canShowHeaderTitle = canShowHeaderTitle
        self.canShowHeaderOption = canShowHeaderOption
        self.isShowOverlay = isShowOverlay
        self.dimension = dimension
        self.seekDuration = seekDuration
    }
}
