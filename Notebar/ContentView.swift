//
//  ContentView.swift
//  Notebar
//
//  Created by Zach Shea on 6/5/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var note = Note()
    
    var body: some View {
        TextEditor(text: $note.text)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
