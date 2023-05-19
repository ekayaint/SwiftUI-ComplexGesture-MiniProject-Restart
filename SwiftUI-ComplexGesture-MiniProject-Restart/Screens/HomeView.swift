//
//  HomeView.swift
//  SwiftUI-ComplexGesture-MiniProject-Restart
//
//  Created by ekayaint on 19.05.2023.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var inOnboardingViewActive: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Home").font(.largeTitle)
            Button(action: {
                inOnboardingViewActive = true
            }) {
                Text("Restart")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
