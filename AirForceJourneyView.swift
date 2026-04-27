import SwiftUI

struct AirForceJourneyView: View {

    @State private var selectedStep: DefenceStep?
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
                Text("Indian Air Force Journey")
                    .font(.system(size: 26, weight: .bold))
                    .padding(.top, 20)

                // STEPS LIST
                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(DefenceStep.airForceSteps) { step in
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

#Preview {
    AirForceJourneyView()
}

