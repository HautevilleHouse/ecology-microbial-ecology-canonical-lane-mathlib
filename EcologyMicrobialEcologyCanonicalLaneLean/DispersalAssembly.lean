import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure DispersalAssembly (C : MicrobialCommunity) where
  sourceCommunities : List (MicrobialCommunity)
  dispersalRates : C.species -> Real
  immigrationEvents : List (C.species × Nat)
  assemblyDynamics : Prop

structure AssemblyRules (C : MicrobialCommunity) (D : DispersalAssembly C) where
  priorityEffects : Prop
  historicalContingency : Prop
  ecologicalDrift : Prop
  selectionDominant : Prop

structure AssemblyRulesPackage {C : MicrobialCommunity} {D : DispersalAssembly C} (A : AssemblyRules C D) where
  priorityEffectsModeled : Prop
  historicalContingencyModeled : Prop
  ecologicalDriftModeled : Prop
  selectionDominantModeled : A.selectionDominant
  priorityEffectsClosed : priorityEffectsModeled
  historicalContingencyClosed : historicalContingencyModeled
  ecologicalDriftClosed : ecologicalDriftModeled
  selectionDominantClosed : selectionDominantModeled

structure AssemblyRulesEvidence {C : MicrobialCommunity} {D : DispersalAssembly C} {A : AssemblyRules C D} (P : AssemblyRulesPackage A) where
  priorityEffectsClosed : P.priorityEffectsModeled
  historicalContingencyClosed : P.historicalContingencyModeled
  ecologicalDriftClosed : P.ecologicalDriftModeled
  selectionDominantClosed : P.selectionDominantModeled

def AssemblyRulesClosed {C : MicrobialCommunity} {D : DispersalAssembly C} {A : AssemblyRules C D} (P : AssemblyRulesPackage A) : Prop :=
  P.priorityEffectsModeled ∧ P.historicalContingencyModeled ∧ P.ecologicalDriftModeled ∧ P.selectionDominantModeled

theorem assembly_rules_closed_from_evidence {C : MicrobialCommunity} {D : DispersalAssembly C} {A : AssemblyRules C D} (P : AssemblyRulesPackage A) (E : AssemblyRulesEvidence P) : AssemblyRulesClosed P := by
  exact And.intro E.priorityEffectsClosed (And.intro E.historicalContingencyClosed (And.intro E.ecologicalDriftClosed E.selectionDominantClosed))

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse