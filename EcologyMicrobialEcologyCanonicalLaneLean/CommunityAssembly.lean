import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure CommunityAssemblyPackage where
  nichePartitioning : Prop
  dispersalLimitation : Prop
  environmentalFiltering : Prop
  historicalContingency : Prop

structure CommunityAssemblyEvidence (C : CommunityAssemblyPackage) where
  nichePartitioningClosed : C.nichePartitioning
  dispersalLimitationClosed : C.dispersalLimitation
  environmentalFilteringClosed : C.environmentalFiltering
  historicalContingencyClosed : C.historicalContingency

def CommunityAssemblyClosed (C : CommunityAssemblyPackage) : Prop :=
  C.nichePartitioning ∧ C.dispersalLimitation ∧ C.environmentalFiltering ∧ C.historicalContingency

theorem community_assembly_closed_from_evidence (C : CommunityAssemblyPackage) (E : CommunityAssemblyEvidence C) :
    CommunityAssemblyClosed C := by
  exact And.intro E.nichePartitioningClosed (And.intro E.dispersalLimitationClosed (And.intro E.environmentalFilteringClosed E.historicalContingencyClosed))

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse
