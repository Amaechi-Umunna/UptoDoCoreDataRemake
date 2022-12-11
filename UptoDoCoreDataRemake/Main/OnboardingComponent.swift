//
//  OnboardingComponent.swift
//  UptoDoCoreDataRemake
//
//  Created by Amaechi Chukwu on 11/12/2022.
//

import SwiftUI

struct OnboardingComponent: View {
    var onboardingConetent: OnboardingContent

    var body: some View {
        VStack(alignment: .center, spacing: 40) {
            Image(onboardingConetent.image)
                .padding(.leading, 20)
                .padding(.bottom, 50)
                .frame(width: 213, height: 277)
                .padding(.top)
            
            Text(onboardingConetent.title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .opacity(0.9)
            
            
            Text(onboardingConetent.message)
                .multilineTextAlignment(.center)
                .font(.title3)
                .fontWeight(.medium)
                .foregroundColor(.white)
                .padding(.bottom, 70)
                .opacity(0.8)
        }
    }
}

struct OnboardingComponent_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingComponent(onboardingConetent: onbaordingContent)
    }
}
