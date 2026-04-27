import Foundation

struct JudiciaryStep: Identifiable {
    let id = UUID()
    let title: String
    let description: String
}


import Foundation

extension JudiciaryStep {

    static let steps: [JudiciaryStep] = [

        JudiciaryStep(
            title: "Eligibility",
            description: """
            To appear for the Judicial Services Examination (commonly known as PCS-J), a candidate must fulfill the following eligibility criteria:

            • Educational Qualification:
              A Bachelor of Laws (LLB) degree from a recognized university is mandatory.
              Some states require enrollment as an advocate under the Bar Council, while others allow fresh law graduates.

            • Age Limit:
              – Minimum age is usually 21 years.
              – Maximum age generally ranges between 35 to 40 years, depending on the state.
              (Age limits and relaxations vary by state judiciary rules.)

            • Nationality:
              The candidate must be an Indian citizen.

            • State-specific Requirements:
              Certain states may require:
              – Knowledge of the local language
              – Domicile certificate
              – Computer proficiency

            Eligibility criteria differ slightly for each state, so candidates must carefully read the official state notification.
            """
        ),

        JudiciaryStep(
            title: "Preliminary Examination",
            description: """
            The Preliminary Examination is the first stage of the Judicial Services exam.

            • Nature of Exam:
              Objective (multiple-choice questions)

            • Purpose:
              Acts as a screening test for the Mains examination.
              Marks obtained in Prelims are usually not counted in the final merit list.

            • Subjects Covered:
              – Constitution of India
              – Indian Penal Code (IPC)
              – Code of Criminal Procedure (CrPC)
              – Code of Civil Procedure (CPC)
              – Indian Evidence Act
              – Current legal developments

            • Importance:
              A strong foundation in core law subjects is essential to clear Prelims.

            Clearing Prelims allows the candidate to appear for the Mains examination.
            """
        ),

        JudiciaryStep(
            title: "Mains Examination",
            description: """
            The Mains Examination is the most important and decisive stage of the Judicial Services exam.

            • Nature of Exam:
              Descriptive (written answers)

            • Papers Include:
              – Substantive law papers (Civil & Criminal Law)
              – Procedural law (CPC, CrPC)
              – Judgment writing
              – Language papers (English / Hindi / regional language)

            • Skills Tested:
              – Legal knowledge
              – Analytical ability
              – Clarity of legal reasoning
              – Judgment drafting skills

            • Weightage:
              Mains examination carries the highest weight in the final selection process.

            Candidates must demonstrate a deep understanding of law and practical application.
            """
        ),

        JudiciaryStep(
            title: "Interview",
            description: """
            The Interview stage is also known as Viva-Voce.

            • Purpose:
              To assess the candidate’s personality and suitability for judicial office.

            • Evaluated Areas:
              – Legal awareness
              – Judicial temperament
              – Ethical values
              – Confidence and communication skills
              – Problem-solving ability

            • Nature of Questions:
              – Law-based questions
              – Situational and ethical scenarios
              – Questions related to personal background and academics

            The interview ensures that the candidate has the right mindset to act as a judge.
            """
        ),

        JudiciaryStep(
            title: "Training",
            description: """
            After final selection, candidates undergo professional judicial training.

            • Training Institutes:
              Conducted at respective State Judicial Academies.

            • Training Components:
              – Court procedures
              – Judgment writing practice
              – Courtroom management
              – Exposure to civil and criminal courts

            • Objective:
              To prepare newly selected judges for real courtroom responsibilities.

            Upon successful completion of training, candidates are appointed as Civil Judges (Junior Division) or Judicial Magistrates.
            """
        )
    ]
}

