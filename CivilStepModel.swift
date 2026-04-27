import Foundation

struct CivilStep: Identifiable {
    let id = UUID()
    let title: String
    let description: String
}


// MARK: - IAS
import Foundation

extension CivilStep {

    static let iasSteps: [CivilStep] = [

        CivilStep(
            title: "Eligibility",
            description: """
            To appear for the Indian Administrative Service (IAS) examination, a candidate must satisfy the following eligibility conditions:

            • Educational Qualification:
              A Bachelor’s degree in any discipline from a recognized university is mandatory.
              Final-year students can also apply, provided they submit proof of qualification before the Mains exam.

            • Age Limit:
              – Minimum age: 21 years
              – Maximum age: 32 years
              (Age is calculated as on 1st August of the exam year)

            • Age Relaxation:
              – OBC: up to 35 years
              – SC/ST: up to 37 years
              – PwBD and other categories as per government norms

            • Nationality:
              The candidate must be a citizen of India.

            • Number of Attempts:
              – General: 6 attempts
              – OBC: 9 attempts
              – SC/ST: Unlimited attempts (within age limit)

            Eligibility is the first and most important checkpoint before starting IAS preparation.
            """
        ),

        CivilStep(
            title: "Prelims Examination",
            description: """
            The Preliminary Examination is the first stage of the UPSC Civil Services Examination.

            • Nature of Exam:
              Objective (multiple choice questions)

            • Papers:
              1. General Studies Paper I:
                 – History, Geography, Polity, Economy, Environment
                 – Current Affairs
                 – This paper decides qualification for Mains

              2. CSAT (Paper II):
                 – Comprehension
                 – Logical reasoning
                 – Basic mathematics
                 – Qualifying in nature (33% minimum required)

            • Purpose:
              Prelims acts only as a screening test.
              Marks obtained here are not counted in the final merit list.

            Clearing Prelims allows a candidate to appear for the Mains examination.
            """
        ),

        CivilStep(
            title: "Mains Examination",
            description: """
            The Mains Examination is the most crucial stage of the IAS exam and plays a major role in determining final rank.

            • Nature of Exam:
              Descriptive (answer writing)

            • Papers Included:
              – Essay Paper
              – General Studies Paper I (History, Culture, Society, Geography)
              – General Studies Paper II (Polity, Governance, IR)
              – General Studies Paper III (Economy, Environment, Security)
              – General Studies Paper IV (Ethics, Integrity, Aptitude)
              – Optional Subject Paper I
              – Optional Subject Paper II
              – Language Papers (Qualifying)

            • Skills Tested:
              – Analytical thinking
              – Clarity of expression
              – Depth of knowledge
              – Answer writing ability

            Mains examination carries the highest weightage in the final merit list.
            """
        ),

        CivilStep(
            title: "Interview",
            description: """
            The Interview stage is officially called the Personality Test.

            • Conducted by:
              Union Public Service Commission (UPSC)

            • Marks:
              275 marks

            • What is Tested:
              – Personality and attitude
              – Leadership qualities
              – Decision-making ability
              – Ethical integrity
              – Awareness of national and international issues

            • Important Point:
              There is no fixed syllabus for the interview.
              Questions are based on your Detailed Application Form (DAF), current affairs, and situational judgment.

            The interview assesses whether the candidate is suitable for administrative responsibilities.
            """
        ),

        CivilStep(
            title: "Training",
            description: """
            After final selection, successful candidates undergo rigorous training to prepare them for real administrative duties.

            • Foundation Course:
              Conducted at Lal Bahadur Shastri National Academy of Administration (LBSNAA), Mussoorie.
              Includes officers from various civil services.

            • Professional Training:
              – Administrative law
              – Public policy
              – District administration
              – Field exposure

            • District Training:
              Candidates are posted in districts to understand grassroots governance.

            • Bharat Darshan:
              Nationwide study tour to understand India’s diversity.

            Training transforms selected candidates into capable IAS officers ready to serve the nation.
            """
        )
    ]
}



import Foundation

extension CivilStep {

    static let ipsSteps: [CivilStep] = [
        CivilStep(
            title: "Eligibility",
            description: """
            To become an IPS officer, a candidate must fulfill the UPSC Civil Services eligibility criteria.

            • Nationality: Indian citizen.
            • Age: 21–32 years (relaxations for OBC/SC/ST).
            • Education: Bachelor’s degree in any discipline.
            • Must meet strict physical and medical standards.

            IPS officers are responsible for maintaining law and order and internal security.
            """
        ),
        CivilStep(
            title: "Prelims Examination",
            description: """
            • Objective screening exam conducted by UPSC.
            • GS Paper I (merit-based).
            • CSAT Paper II (qualifying – 33%).

            Only candidates clearing Prelims can appear for Mains.
            """
        ),
        CivilStep(
            title: "Mains Examination",
            description: """
            • Descriptive written examination.
            • Essay, GS Papers, Optional subject.

            Mains exam plays a major role in determining final rank.
            """
        ),
        CivilStep(
            title: "Interview",
            description: """
            • Personality Test conducted by UPSC.
            • Focus on leadership, confidence, and decision-making.

            IPS candidates are evaluated for their suitability for policing roles.
            """
        ),
        CivilStep(
            title: "Training",
            description: """
            • Foundation Course at LBSNAA, Mussoorie.
            • Professional training at SVPNPA, Hyderabad.

            Training includes physical fitness, law, weapons, and field exposure.
            """
        )
    ]
}


import Foundation

extension CivilStep {

    static let ifsSteps: [CivilStep] = [
        CivilStep(
            title: "Eligibility",
            description: """
            To join the Indian Forest Service, candidates must meet both academic and age criteria.

            • Nationality: Indian citizen.
            • Age: 21–32 years (category relaxations applicable).
            • Education: Bachelor’s degree with science subjects
              (Botany, Zoology, Physics, Chemistry, etc.).

            A strong scientific background is mandatory for IFS.
            """
        ),
        CivilStep(
            title: "Prelims Examination",
            description: """
            • Same Prelims exam as IAS and IPS.
            • Objective screening stage conducted by UPSC.
            """
        ),
        CivilStep(
            title: "Mains Examination",
            description: """
            • Specialized forestry and science papers.
            • Descriptive written examination.

            Focuses on environmental science, forestry, and biodiversity.
            """
        ),
        CivilStep(
            title: "Interview",
            description: """
            • Personality Test conducted by UPSC.
            • Focus on environmental awareness and administrative aptitude.
            """
        ),
        CivilStep(
            title: "Training",
            description: """
            • Foundation Course at LBSNAA, Mussoorie.
            • Professional training at IGNFA, Dehradun.

            Training includes forest management and wildlife conservation.
            """
        )
    ]
}
