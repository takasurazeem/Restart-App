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
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()
            VStack(spacing: 20) {
                // MARK: - Header
                
                Spacer()
                VStack(spacing: 0) {
                    Text("Share")
                        .foregroundColor(.white)
                        .font(.system(size: 60, weight: .heavy))
                    
                    Text("""
                    It's not how much we give but,
                    how much love we put into giving.
                    """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                } //: Header
                // MARK: - Center
                
                ZStack {
                    ZStack {
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 40)
                            .frame(width: 260, height: 260, alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 80)
                            .frame(width: 260, height: 260, alignment: .center)
                    } //: ZStack
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                } //: Center
                Spacer()
                // MARK: - Footer
                
                ZStack {
                    // PARTS OF CUSTOM BUTTON
                    
                    // 1. BACKGROUND (STATIC)
                    
                    Capsule()
                        .fill(.white.opacity(0.2))
                    
                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)
                    
                    // 2. CALL-TO-ACTION (STATIC)
                    
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded, weight: .bold))
                        .foregroundColor(.white)
                        .offset(x: 20)
                    
                    // 3. CAPSULE (DYNAMIC WIDTH)
                    
                    HStack {
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)
                        
                        Spacer()
                    }
                    
                    // 4. CIRCLE (DRAGGABLE)
                    
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color("ColorRed"))
                            
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        }
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .onTapGesture {
                            isOnboardingViewActive = false
                        }
                        
                        Spacer()
                    } //: HStack
                } //: Footer
                .frame(height: 80, alignment: .center)
                .padding()
            } //: ZStack
        } //: VStack
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
