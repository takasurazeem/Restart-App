//
//  OnboardingView.swift
//  Restart-App
//
//  Created by Takasur Azeem on 21/09/2022.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Property
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding!")
                .font(.largeTitle)
            Button {
                isOnboardingViewActive = false
            } label: {
                Text("Start")
            }

        } //: VStack
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
