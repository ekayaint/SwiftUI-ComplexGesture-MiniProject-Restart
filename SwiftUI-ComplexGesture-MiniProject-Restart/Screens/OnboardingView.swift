//
//  OnboardingView.swift
//  SwiftUI-ComplexGesture-MiniProject-Restart
//
//  Created by ekayaint on 19.05.2023.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("onboarding") var inOnboardingViewActive: Bool = true
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding").font(.largeTitle)
            Button(action: {
                inOnboardingViewActive = false
            }) {
                Text("Start")
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
