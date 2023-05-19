//
//  ContentView.swift
//  SwiftUI-ComplexGesture-MiniProject-Restart
//
//  Created by ekayaint on 9.05.2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var inOnboardingViewActive: Bool = true
    var body: some View {
        ZStack {
            if inOnboardingViewActive {
                OnboardingView()
            }
            else {
                HomeView()
            }
        }
         
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
