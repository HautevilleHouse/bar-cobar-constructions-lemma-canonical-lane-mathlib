import BarCobarConstructionsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsLemmaCanonicalLaneLean

structure CobarConstructionPackage where
  moduleCategory : Type u
  coalgebraObject : Type v
  cobarResolution : Type w
  cobarDifferentialDefined : Prop
  cobarComplexFinite : Prop
  cobarBarDuality : Prop

structure CobarConstructionEvidence (C : CobarConstructionPackage) where
  cobarDifferentialDefinedClosed : C.cobarDifferentialDefined
  cobarComplexFiniteClosed : C.cobarComplexFinite
  cobarBarDualityClosed : C.cobarBarDuality

def CobarConstructionClosed (C : CobarConstructionPackage) : Prop :=
  C.cobarDifferentialDefined ∧ C.cobarComplexFinite ∧ C.cobarBarDuality

theorem cobar_construction_closed_from_evidence (C : CobarConstructionPackage)
    (E : CobarConstructionEvidence C) : CobarConstructionClosed C := by
  exact And.intro E.cobarDifferentialDefinedClosed
    (And.intro E.cobarComplexFiniteClosed E.cobarBarDualityClosed)

end BarCobarConstructionsLemmaCanonicalLaneLean
end HautevilleHouse