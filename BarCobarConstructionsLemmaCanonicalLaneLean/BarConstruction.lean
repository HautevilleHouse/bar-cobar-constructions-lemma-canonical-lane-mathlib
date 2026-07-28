import BarCobarConstructionsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsLemmaCanonicalLaneLean

structure BarConstructionPackage where
  moduleCategory : Type u
  algebraObject : Type v
  barResolution : Type w
  barDifferentialDefined : Prop
  barComplexFinite : Prop
  barCobarDuality : Prop

structure BarConstructionEvidence (B : BarConstructionPackage) where
  barDifferentialDefinedClosed : B.barDifferentialDefined
  barComplexFiniteClosed : B.barComplexFinite
  barCobarDualityClosed : B.barCobarDuality

def BarConstructionClosed (B : BarConstructionPackage) : Prop :=
  B.barDifferentialDefined ∧ B.barComplexFinite ∧ B.barCobarDuality

theorem bar_construction_closed_from_evidence (B : BarConstructionPackage)
    (E : BarConstructionEvidence B) : BarConstructionClosed B := by
  exact And.intro E.barDifferentialDefinedClosed
    (And.intro E.barComplexFiniteClosed E.barCobarDualityClosed)

end BarCobarConstructionsLemmaCanonicalLaneLean
end HautevilleHouse