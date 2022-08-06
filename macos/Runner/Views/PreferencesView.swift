//
//  PreferencesView.swift
//  Runner
//
//  Created by Xiuxuan Wang on 2022/7/24.
//

import SwiftUI
import KeyboardShortcuts

@available(macOS 10.15, *)
struct PreferencesView: View {
    var body: some View {
        VStack {
            Text("Preferences")
                .font(.title)
            Form {
                KeyboardShortcuts.Recorder("Launch App Shortcut", name: .showApp)
            }

        }.padding()
    }
}

@available(macOS 10.15, *)
struct PreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesView()
    }
}
