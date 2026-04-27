//
//  SwiftUIView.swift
//  NationServe
//
//  Created by Student on 18/02/26.
//
import SwiftUI
struct CivilJourneyView: View {

    let title: String
    let steps: [CivilStep]

    var body: some View {
        ScrollView {

            VStack(alignment: .leading, spacing: 20) {

                Text(title)
                    .font(.system(size: 26, weight: .bold))

                ForEach(steps) { step in
                    VStack(alignment: .leading, spacing: 8) {
                        Text(step.title)
                            .font(.headline)

                        Text(step.description)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.white.opacity(0.08))
                    )
                }
            }
            .padding()
        }
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}
