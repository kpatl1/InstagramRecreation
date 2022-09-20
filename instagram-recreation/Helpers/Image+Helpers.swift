//
//  Image+Helpers.swift
//  p00-tiktok
//
//  Created by Samuel Shi on 9/15/22.
//

import SwiftUI

extension Image {
    func resizableSquare(dimension: CGFloat) -> some View {
        self.resizable()
            .scaledToFit()
            .frame(width: dimension, height: dimension)
    }
}
