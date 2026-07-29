import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure NichePartitioning (C : MicrobialCommunity) where
  resourceTypes : List String
  resourceConsumption : C.species -> String -> Real
  nicheOverlap : C.species -> C.species -> Real
  partitioningComplete : Prop

structure NichePartitioningPackage {C : MicrobialCommunity} (N : NichePartitioning C) where
  resourcePartitioned : Prop
  nicheOverlapComputed : Prop
  partitioningCompleteClosed : N.partitioningComplete
  resourcePartitionedClosed : resourcePartitioned
  nicheOverlapComputedClosed : nicheOverlapComputed

structure NichePartitioningEvidence {C : MicrobialCommunity} {N : NichePartitioning C} (P : NichePartitioningPackage N) where
  resourcePartitionedClosed : P.resourcePartitioned
  nicheOverlapComputedClosed : P.nicheOverlapComputed
  partitioningCompleteClosed : P.partitioningCompleteClosed

def NichePartitioningClosed {C : MicrobialCommunity} {N : NichePartitioning C} (P : NichePartitioningPackage N) : Prop :=
  P.resourcePartitioned ∧ P.nicheOverlapComputed ∧ P.partitioningCompleteClosed

theorem niche_partitioning_closed_from_evidence {C : MicrobialCommunity} {N : NichePartitioning C} (P : NichePartitioningPackage N) (E : NichePartitioningEvidence P) : NichePartitioningClosed P := by
  exact And.intro E.resourcePartitionedClosed (And.intro E.nicheOverlapComputedClosed E.partitioningCompleteClosed)

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse