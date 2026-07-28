import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsLemmaCanonicalLaneLean

structure BarConstructionPackage where
  standardBarComplex : Prop
  barDifferentialDefined : Prop
  barResolutionProperty : Prop

structure BarConstructionEvidence (B : BarConstructionPackage) where
  standardBarComplexClosed : B.standardBarComplex
  barDifferentialDefinedClosed : B.barDifferentialDefined
  barResolutionPropertyClosed : B.barResolutionProperty

def BarConstructionClosed (B : BarConstructionPackage) : Prop :=
  B.standardBarComplex ∧ B.barDifferentialDefined ∧ B.barResolutionProperty

theorem bar_construction_closed_from_evidence (B : BarConstructionPackage) (E : BarConstructionEvidence B) :
    BarConstructionClosed B := by
  exact And.intro E.standardBarComplexClosed
    (And.intro E.barDifferentialDefinedClosed E.barResolutionPropertyClosed)

structure CobarConstructionPackage where
  standardCobarComplex : Prop
  cobarDifferentialDefined : Prop
  cobarResolutionProperty : Prop

structure CobarConstructionEvidence (C : CobarConstructionPackage) where
  standardCobarComplexClosed : C.standardCobarComplex
  cobarDifferentialDefinedClosed : C.cobarDifferentialDefined
  cobarResolutionPropertyClosed : C.cobarResolutionProperty

def CobarConstructionClosed (C : CobarConstructionPackage) : Prop :=
  C.standardCobarComplex ∧ C.cobarDifferentialDefined ∧ C.cobarResolutionProperty

theorem cobar_construction_closed_from_evidence (C : CobarConstructionPackage) (E : CobarConstructionEvidence C) :
    CobarConstructionClosed C := by
  exact And.intro E.standardCobarComplexClosed
    (And.intro E.cobarDifferentialDefinedClosed E.cobarResolutionPropertyClosed)

end BarCobarConstructionsLemmaCanonicalLaneLean
end HautevilleHouse