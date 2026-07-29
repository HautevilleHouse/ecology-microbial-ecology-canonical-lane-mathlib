import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure DiversityEvidenceTerms {D : DiversityIndexPackage} (C : DiversityAnalyticCertificate D) where
  shannonIndexClosed : C.shannonIndex
  simpsonIndexClosed : C.simpsonIndex
  evennessClosed : C.evenness
  richnessClosed : C.richness
  diversityClosed : DiversityIndexClosed D

def DiversityAnalyticCertificate.evidenceTerms {D : DiversityIndexPackage}
    (C : DiversityAnalyticCertificate D) : DiversityEvidenceTerms C :=
  {
    shannonIndexClosed := C.shannonIndexClosed
    simpsonIndexClosed := C.simpsonIndexClosed
    evennessClosed := C.evennessClosed
    richnessClosed := C.richnessClosed
    diversityClosed := diversity_index_closed_from_evidence D C.diversityEvidence
  }

structure NutrientCycleEvidenceTerms {N : NutrientCyclePackage} (C : NutrientCycleAnalyticCertificate N) where
  nitrogenFixationClosed : C.nitrogenFixation
  phosphorusSolubilizationClosed : C.phosphorusSolubilization
  carbonDecompositionClosed : C.carbonDecomposition
  nutrientCycleClosed : NutrientCycleClosed N

def NutrientCycleAnalyticCertificate.evidenceTerms {N : NutrientCyclePackage}
    (C : NutrientCycleAnalyticCertificate N) : NutrientCycleEvidenceTerms C :=
  {
    nitrogenFixationClosed := C.nitrogenFixationClosed
    phosphorusSolubilizationClosed := C.phosphorusSolubilizationClosed
    carbonDecompositionClosed := C.carbonDecompositionClosed
    nutrientCycleClosed := nutrient_cycle_closed_from_evidence N C.nutrientCycleEvidence
  }

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse