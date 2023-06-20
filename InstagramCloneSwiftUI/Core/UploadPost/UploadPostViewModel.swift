//
//  UploadPostViewModel.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 20/06/23.
//

import SwiftUI
import PhotosUI

class UploadPostViewModel: ObservableObject {
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task { await loadImage(fromItem: selectedImage) } }
    }
    func loadImage(fromItem item: PhotosPickerItem?) async {
        
    }
}
