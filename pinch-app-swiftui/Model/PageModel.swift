//
//  PageModel.swift
//  pinch-app-swiftui
//
//  Created by Charles Roberts on 6/25/22.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
