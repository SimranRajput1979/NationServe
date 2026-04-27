import Foundation

struct DefenceStep: Identifiable {
    let id = UUID()
    let title: String
    let description: String
}

extension DefenceStep {

    static let armySteps: [DefenceStep] = [
        DefenceStep(
            title: "Eligibility",
            description: """
            To join the Indian Army as an officer, a candidate must fulfill the following eligibility conditions:

            • Nationality:
              The candidate must be a citizen of India.

            • Age Criteria:
              – NDA Entry: 16.5 to 19.5 years (after Class 12)
              – CDS Entry: 19 to 24 years (after Graduation)

            • Educational Qualification:
              – NDA: Passed or appearing in Class 12
              – CDS: Bachelor’s degree from a recognized university

            Meeting eligibility is the first and most important step before applying.
            """
        ),
        DefenceStep(
            title: "Written Examination",
            description: """
            The written examination is conducted by UPSC to test academic knowledge and reasoning ability.

            • Entry Exams:
              – NDA (for Class 12 students)
              – CDS (for Graduates)

            • Subjects:
              – Mathematics
              – General Ability (English, GK, Science, History, Geography)

            The written exam is only a screening stage. Clearing it allows the candidate to appear for SSB.
            """
        ),
        DefenceStep(
            title: "SSB Interview",
            description: """
            The Services Selection Board (SSB) interview is a 5-day personality assessment process.

            • It tests:
              – Officer Like Qualities (OLQs)
              – Leadership
              – Decision making
              – Teamwork and confidence

            • Includes:
              – Psychological tests
              – Group tasks (GTO)
              – Personal interview

            SSB evaluates whether the candidate is mentally and psychologically fit to become an Army officer.
            """
        ),
        DefenceStep(
            title: "Medical Examination",
            description: """
            Candidates recommended by SSB undergo a detailed medical examination.

            • Checks include:
              – Vision standards
              – Hearing ability
              – Physical fitness
              – Overall medical health

            Medical standards are strict because Army officers must serve in challenging field conditions.
            """
        ),
        DefenceStep(
            title: "Training",
            description: """
            After clearing all stages, candidates undergo military training.

            • Training Academies:
              – NDA, Khadakwasla (after Class 12)
              – Indian Military Academy (IMA), Dehradun (after Graduation)

            Training focuses on:
              – Discipline
              – Physical endurance
              – Leadership
              – Military tactics

            On completion, candidates are commissioned as officers in the Indian Army.
            """
        )
    ]
}

extension DefenceStep {

    static let navySteps: [DefenceStep] = [
        DefenceStep(
            title: "Eligibility",
            description: """
            To join the Indian Navy as an officer, candidates must satisfy specific eligibility criteria.

            • Nationality:
              Indian citizen.

            • Age Limit:
              – NDA: 16.5 to 19.5 years
              – CDS: 19 to 24 years

            • Educational Qualification:
              – NDA: Class 12 with Physics, Chemistry, Mathematics (PCM)
              – CDS: Graduation (as per branch requirements)

            Naval officers require strong academic and physical fitness due to maritime duties.
            """
        ),
        DefenceStep(
            title: "Written Examination",
            description: """
            Candidates must clear the NDA or CDS written examination conducted by UPSC.

            • Subjects:
              – Mathematics
              – General Ability Test

            The written exam evaluates:
              – Problem-solving ability
              – General awareness
              – Communication skills

            Clearing this stage makes the candidate eligible for SSB Interview.
            """
        ),
        DefenceStep(
            title: "SSB Interview",
            description: """
            The SSB interview assesses whether the candidate is suitable for a naval officer role.

            • Duration:
              5 days

            • Evaluation areas:
              – Psychological stability
              – Leadership skills
              – Team coordination
              – Stress handling ability

            Naval officers often work in isolated and challenging sea environments, making personality assessment crucial.
            """
        ),
        DefenceStep(
            title: "Medical Examination",
            description: """
            Medical examination ensures the candidate meets naval medical standards.

            • Key checks:
              – Vision and color perception
              – Hearing
              – Physical fitness
              – Overall medical condition

            Naval medical standards are strict due to long sea deployments.
            """
        ),
        DefenceStep(
            title: "Training",
            description: """
            Selected candidates undergo training at:

            • Indian Naval Academy (INA), Ezhimala

            Training includes:
              – Naval discipline
              – Seamanship
              – Navigation
              – Leadership and maritime operations

            Successful trainees are commissioned as officers in the Indian Navy.
            """
        )
    ]
}


extension DefenceStep {

    static let airForceSteps: [DefenceStep] = [
        DefenceStep(
            title: "Eligibility",
            description: """
            The Indian Air Force has specific eligibility requirements depending on the entry scheme.

            • Nationality:
              Indian citizen.

            • Age Limit:
              – NDA: 16.5 to 19.5 years
              – CDS / AFCAT: 19 to 24 years

            • Educational Qualification:
              – NDA: Class 12 with PCM
              – CDS/AFCAT: Graduation with required subjects

            Air Force candidates must meet high academic and physical standards.
            """
        ),
        DefenceStep(
            title: "Written Examination",
            description: """
            Candidates must clear one of the following examinations:

            • NDA
            • CDS
            • AFCAT (Air Force Common Admission Test)

            • Subjects tested:
              – Mathematics
              – General Ability
              – Technical papers (for technical branches)

            The written exam tests logical reasoning, technical knowledge, and awareness.
            """
        ),
        DefenceStep(
            title: "SSB Interview",
            description: """
            The SSB interview is a comprehensive 5-day evaluation process.

            • Assesses:
              – Mental alertness
              – Confidence
              – Decision-making under pressure
              – Leadership qualities

            Flying branch candidates undergo additional psychological testing.
            """
        ),
        DefenceStep(
            title: "Medical Examination",
            description: """
            Medical fitness is extremely critical for Air Force candidates.

            • Includes:
              – Vision and eye standards (very strict for pilots)
              – Physical endurance
              – Overall medical health

            Only medically fit candidates are allowed to proceed to training.
            """
        ),
        DefenceStep(
            title: "Training",
            description: """
            Selected candidates undergo training at:

            • Air Force Academy (AFA), Dundigal

            Training includes:
              – Flying training (for pilots)
              – Technical training
              – Ground duty administration
              – Discipline and leadership

            On completion, candidates are commissioned as officers in the Indian Air Force.
            """
        )
    ]
}


