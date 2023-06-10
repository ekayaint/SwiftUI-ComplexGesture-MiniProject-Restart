//
//  HomeView.swift
//  SwiftUI-ComplexGesture-MiniProject-Restart
//
//  Created by ekayaint on 19.05.2023.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var inOnboardingViewActive: Bool = false
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            // MARK: - HEADER
            Spacer()
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                Image("ball")
                    .resizable()
                    .frame(width: 200, height: 200)
                    //.scaledToFit()
                    .padding()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(
                        Animation
                            .easeInOut(duration: 4)
                            .repeatForever()
                        , value: isAnimating
                    )
            }
            
            // MARK: - CENTER
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            // MARK: - FOOTER

            
            Spacer()
            Button(action: {
                withAnimation {
                    inOnboardingViewActive = true
                }
            }) {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3,design: .rounded))
                    .fontWeight(.bold)
            } //: Button
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }//: VSTACK
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                isAnimating = true
            })
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
