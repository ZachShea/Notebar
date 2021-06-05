//
//  Note.swift
//  Notebar
//
//  Created by Zach Shea on 6/5/21.
//

import Foundation

class Note: ObservableObject {
    @Published var text: String {
        didSet {
            UserDefaults.standard.set(self.text, forKey: "text")
        }
    }
    
    init() {
        self.text = UserDefaults.standard.string(forKey: "text") ?? ""
    }
}
