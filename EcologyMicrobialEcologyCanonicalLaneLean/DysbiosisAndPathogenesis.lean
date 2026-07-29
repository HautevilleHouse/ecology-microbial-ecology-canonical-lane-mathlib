import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure DysbiosisPackage where
  lossOfDiversity : Prop
  pathogenOvergrowth : Prop
  immuneDysregulation : Prop
  diseaseManifestation : Prop

structure DysbiosisEvidence (D : DysbiosisPackage) where
  lossOfDiversityClosed : D.lossOfDiversity
  pathogenOvergrowthClosed : D.pathogenOvergrowth
  immuneDysregulationClosed : D.immuneDysregulation
  diseaseManifestationClosed : D.diseaseManifestation

def DysbiosisClosed (D : DysbiosisPackage) : Prop :=
  D.lossOfDiversity ∧ D.pathogenOvergrowth ∧ D.immuneDysregulation ∧ D.diseaseManifestation

theorem dysbiosis_closed_from_evidence (D : DysbiosisPackage) (E : DysbiosisEvidence D) :
    DysbiosisClosed D := by
  exact And.intro E.lossOfDiversityClosed (And.intro E.pathogenOvergrowthClosed (And.intro E.immuneDysregulationClosed E.diseaseManifestationClosed))

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse