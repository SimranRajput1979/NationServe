//
//  SwiftUIView.swift
//  NationServe
//
//  Created by Student on 18/02/26.
//
import SwiftUI
struct CivilStreamView: View {

    let title: String
    let subtitle: String

    var body: some View {
        VStack(spacing: 6) {

            Text(title)
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.black)

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
        .contentShape(Rectangle())
    }
}
