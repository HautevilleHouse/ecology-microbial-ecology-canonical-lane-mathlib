import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure DiversityAnalyticCertificate (D : DiversityIndexPackage) where
  shannonIndex : Prop
  simpsonIndex : Prop
  evenness : Prop
  richness : Prop
  shannonIndexClosed : shannonIndex
  simpsonIndexClosed : simpsonIndex
  evennessClosed : evenness
  richnessClosed : richness
  diversityEvidence : DiversityIndexEvidence D

def DiversityAnalyticCertificateClosed {D : DiversityIndexPackage}
    (C : DiversityAnalyticCertificate D) : Prop :=
  C.shannonIndex ∧ C.simpsonIndex ∧ C.evenness ∧ C.richness ∧ DiversityIndexClosed D

theorem diversity_analytic_certificate_closed
    {D : DiversityIndexPackage} (C : DiversityAnalyticCertificate D) :
    DiversityAnalyticCertificateClosed C := by
  exact And.intro C.shannonIndexClosed
    (And.intro C.simpsonIndexClosed
      (And.intro C.evennessClosed
        (And.intro C.richnessClosed
          (diversity_index_closed_from_evidence D C.diversityEvidence))))

structure NutrientCycleAnalyticCertificate (N : NutrientCyclePackage) where
  nitrogenFixation : Prop
  phosphorusSolubilization : Prop
  carbonDecomposition : Prop
  nitrogenFixationClosed : nitrogenFixation
  phosphorusSolubilizationClosed : phosphorusSolubilization
  carbonDecompositionClosed : carbonDecomposition
  nutrientCycleEvidence : NutrientCycleEvidence N

def NutrientCycleAnalyticCertificateClosed {N : NutrientCyclePackage}
    (C : NutrientCycleAnalyticCertificate N) : Prop :=
  C.nitrogenFixation ∧ C.phosphorusSolubilization ∧ C.carbonDecomposition ∧ NutrientCycleClosed N

theorem nutrient_cycle_analytic_certificate_closed
    {N : NutrientCyclePackage} (C : NutrientCycleAnalyticCertificate N) :
    NutrientCycleAnalyticCertificateClosed C := by
  exact And.intro C.nitrogenFixationClosed
    (And.intro C.phosphorusSolubilizationClosed
      (And.intro C.carbonDecompositionClosed
        (nutrient_cycle_closed_from_evidence N C.nutrientCycleEvidence)))

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse