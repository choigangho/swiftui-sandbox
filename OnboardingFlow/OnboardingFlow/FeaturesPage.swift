//
//  FeaturesPage.swift
//  OnboardingFlow
//
//  Created by choigangho on 10/14/26.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
                .padding(.top, 100)
            
            FeatureCard(iconName: "person.2.crop.square.stack.fill", description: "왼쪽 이미지와 함께 표시되는 긴 설명입니다.")
            
            FeatureCard(iconName: "quote.bubble.fill", description: "짧은 설명입니다.")
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}
