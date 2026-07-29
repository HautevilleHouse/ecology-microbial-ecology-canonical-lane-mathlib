import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure NutrientCyclePackage where
  carbonFlux : ℝ
  nitrogenFlux : ℝ
  phosphorusFlux : ℝ
  fluxBalance : Prop

structure NutrientCycleEvidence (C : NutrientCyclePackage) where
  carbonFluxClosed : C.carbonFlux > 0
  nitrogenFluxClosed : C.nitrogenFlux > 0
  phosphorusFluxClosed : C.phosphorusFlux > 0
  fluxBalanceClosed : C.fluxBalance

def NutrientCycleClosed (C : NutrientCyclePackage) : Prop :=
  C.carbonFlux > 0 ∧ C.nitrogenFlux > 0 ∧ C.phosphorusFlux > 0 ∧ C.fluxBalance

theorem nutrient_cycle_closed_from_evidence (C : NutrientCyclePackage) (E : NutrientCycleEvidence C) :
    NutrientCycleClosed C := by
  exact And.intro E.carbonFluxClosed (And.intro E.nitrogenFluxClosed (And.intro E.phosphorusFluxClosed E.fluxBalanceClosed))

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse