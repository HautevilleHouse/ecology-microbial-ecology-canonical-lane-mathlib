import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure SpatialStructurePackage where
  biofilmFormation : Prop
  spatialHeterogeneity : Prop
  colonization : Prop
  dispersal : Prop

structure SpatialStructureEvidence (S : SpatialStructurePackage) where
  biofilmFormationClosed : S.biofilmFormation
  spatialHeterogeneityClosed : S.spatialHeterogeneity
  colonizationClosed : S.colonization
  dispersalClosed : S.dispersal

def SpatialStructureClosed (S : SpatialStructurePackage) : Prop :=
  S.biofilmFormation ∧ S.spatialHeterogeneity ∧ S.colonization ∧ S.dispersal

theorem spatial_structure_closed_from_evidence (S : SpatialStructurePackage) (E : SpatialStructureEvidence S) :
    SpatialStructureClosed S := by
  exact And.intro E.biofilmFormationClosed (And.intro E.spatialHeterogeneityClosed (And.intro E.colonizationClosed E.dispersalClosed))

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse