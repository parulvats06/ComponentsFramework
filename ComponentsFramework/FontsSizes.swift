//
//  Fonts.swift
//  ComponentsFramework
//
//  Created by Parul Vats on 21/07/2020.
//  Copyright © 2020 Tekhsters. All rights reserved.
//

import UIKit

public enum Fonts {
    
    public enum Weight {
        case regular
        case medium
        case condensed
    }
    
    public enum Size: UInt {
        case xLarge = 20
        case large = 16
        case medium = 14
        case small = 12
        
        public var pointSize: CGFloat {
            return CGFloat(rawValue)
        }
    }
    
    public static func regular(_ size: Size) -> UIFont {
        return font(weight: .regular, size: size)
    }
    
    public static func medium(_ size: Size) -> UIFont {
        return font(weight: .medium, size: size)
    }
    
    public static func condensed(_ size: Size) -> UIFont {
        return font(weight: .condensed, size: size)
    }
    
    private static func font(weight: Weight, size: Size) -> UIFont {
        switch weight {
        case .regular:
            return UIFont.systemFont(ofSize: size.pointSize, weight: .regular)
        case .medium:
            return UIFont.systemFont(ofSize: size.pointSize, weight: .medium)
        case .condensed:
            return UIFont.systemFont(ofSize: size.pointSize, weight: .bold)
        }
    }
}

