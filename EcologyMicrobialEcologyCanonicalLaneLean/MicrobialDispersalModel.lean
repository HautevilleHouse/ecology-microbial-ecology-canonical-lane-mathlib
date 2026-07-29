import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure DispersalModelPackage where
  dispersalVector : Type u
  distanceDecayFunction : DispersalVector → ℕ
  connectivityMatrix : List (List ℕ)
  immigrationRate : ℕ
  emigrationRate : ℕ
  sourceSinkDynamics : Prop
  metapopulationStructure : Prop
  colonizationExtinctionBalance : Prop

structure DispersalModelEvidence (D : DispersalModelPackage) where
  distanceDecayFunctionDefined : D.dispersalVector
  connectivityDefined : D.connectivityMatrix
  immigrationRateClosed : D.immigrationRate
  emigrationRateClosed : D.emigrationRate
  sourceSinkDynamicsClosed : D.sourceSinkDynamics
  metapopulationStructureClosed : D.metapopulationStructure
  colonizationExtinctionBalanceClosed : D.colonizationExtinctionBalance

def DispersalModelClosed (D : DispersalModelPackage) : Prop :=
  D.sourceSinkDynamics ∧ D.metapopulationStructure ∧ D.colonizationExtinctionBalance

theorem dispersal_model_closed_from_evidence (D : DispersalModelPackage)
    (E : DispersalModelEvidence D) : DispersalModelClosed D := by
  exact And.intro E.sourceSinkDynamicsClosed
    (And.intro E.metapopulationStructureClosed
      E.colonizationExtinctionBalanceClosed)

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse