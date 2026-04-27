import SwiftUI

struct IPSJourneyView: View {

    @State private var selectedStep: CivilStep?
    @State private var showPopup = false

    var body: some View {
        ZStack {

            LinearGradient(
                colors: [.white, .gray.opacity(0.2)],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack {

                // TITLE
                Text("Indian Police Service Journey")
                    .font(.system(size: 26, weight: .bold))
                    .padding(.top, 20)

                // STEPS
                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(CivilStep.ipsSteps) { step in
                            StepCard(title: step.title) {
                                selectedStep = step
                                showPopup = true
                            }
                        }
                    }
                    .padding()
                }
            }

            // POPUP
            if showPopup, let step = selectedStep {
                CenterPopup(
                    title: step.title,
                    description: step.description,
                    showPopup: $showPopup
                )
            }
        }
    }
}

