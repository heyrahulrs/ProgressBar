//
//  ContentView.swift
//  MyProgressBar
//
//  Created by Rahul Sharma on 7/23/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var progress: CGFloat = 0.0
    var body: some View {
        VStack {
            ProgressBar(progress: $progress)
                .frame(width: 345, height: 14.0)
            Button(
                action: {
                    self.progress = CGFloat.random(in: 0...100)
                }
            ) {
                Text("Random Progress")
            }
            .padding()
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
