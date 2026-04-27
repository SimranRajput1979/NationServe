//
//  SwiftUIView.swift
//  NationServe
//
//  Created by Student on 18/02/26.
//

import SwiftUI

struct DefenceStreamView: View {

    let title: String
    let subtitle: String

    var body: some View {
        VStack(spacing: 6) {

            // MAIN TITLE
            Text(title)
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.black)

            // SUBTITLE
            Text(subtitle)
                .font(.system(size: 14))
                .foregroundColor(.black.opacity(0.6))
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 80)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white)
                .shadow(color: .black.opacity(0.35), radius: 6)
        )
        .contentShape(Rectangle()) // ✅ makes entire card tappable
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        DefenceStreamView(
            title: "Defence Services",
            subtitle: "Army • Navy • Air Force"
        )
        .padding()
    }
}
