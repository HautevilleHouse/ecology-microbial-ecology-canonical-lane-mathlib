import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure SpatiotemporalDynamicsPackage where
  spatialHeterogeneityModel : Type u
  temporalSeries : Type v
  dispersalKernel : Prop
  environmentalFiltering : Prop
  priorityEffectsCaptured : Prop
  alternativeStableStates : Prop

def spatiotemporalDynamicsClosed (S : SpatiotemporalDynamicsPackage) : Prop :=
  S.dispersalKernel ∧ S.environmentalFiltering ∧ S.priorityEffectsCaptured ∧ S.alternativeStableStates

structure SpatiotemporalDynamicsEvidence (S : SpatiotemporalDynamicsPackage) where
  dispersalKernelClosed : S.dispersalKernel
  environmentalFilteringClosed : S.environmentalFiltering
  priorityEffectsCapturedClosed : S.priorityEffectsCaptured
  alternativeStableStatesClosed : S.alternativeStableStates

theorem spatiotemporal_dynamics_closed_from_evidence (S : SpatiotemporalDynamicsPackage) (E : SpatiotemporalDynamicsEvidence S) :
    spatiotemporalDynamicsClosed S := by
  exact And.intro E.dispersalKernelClosed
    (And.intro E.environmentalFilteringClosed
      (And.intro E.priorityEffectsCapturedClosed E.alternativeStableStatesClosed))

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse