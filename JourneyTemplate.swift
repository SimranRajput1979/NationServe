//
//  SwiftUIView.swift
//  NationServe
//
//  Created by Student on 18/02/26.
//

import SwiftUI

struct JourneyTemplate<Step: Identifiable>: View {

    let title: String
    let steps: [Step]
    @Binding var selectedStep: Step?
    @Binding var showPopup: Bool

    var body: some View {
        ZStack {

            LinearGradient(colors: [.white, .gray.opacity(0.2)],
                           startPoint: .top,
                           endPoint: .bottom)
            .ignoresSafeArea()

            VStack {
                Text(title)
                    .font(.system(size: 26, weight: .bold))
                    .padding(.top, 20)

                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(steps) { step in
                            StepCard(title: Mirror(reflecting: step).children.first?.value as? String ?? "") {
                                selectedStep = step
                                showPopup = true
                            }
                        }
                    }
                    .padding()
                }
            }

            if showPopup, let step = selectedStep {
                CenterPopup(
                    title: Mirror(reflecting: step).children.first?.value as? String ?? "",
                    description: Mirror(reflecting: step).children.dropFirst().first?.value as? String ?? "",
                    showPopup: $showPopup
                )
            }
        }
    }
}
import SwiftUI

struct StepCard: View {

    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack {
                Text(title)
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundColor(.black)

                Spacer()

                Image(systemName: "chevron.right")
                    .foregroundColor(.black.opacity(0.4))
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.white)
                    .shadow(color: .black.opacity(0.08), radius: 5)
            )
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    StepCard(title: "Eligibility") {}
}
