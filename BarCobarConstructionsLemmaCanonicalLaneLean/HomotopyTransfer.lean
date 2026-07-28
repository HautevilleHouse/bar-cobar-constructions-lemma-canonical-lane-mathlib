import BarCobarConstructionsLemmaCanonicalLaneLean.BarCobarComplex

/-!
# Homotopy Transfer Package
-/

namespace HautevilleHouse
namespace BarCobarConstructionsLemmaCanonicalLaneLean

structure HomotopyTransferPackage {G : CoalgebraPackage}
    {F : TwistingMorphismPackage G} {S : BarCobarConstructionPackage F}
    (C : BarCobarComplexPackage S) where
  homotopyRetract : Prop
  perturbationLemma : Prop
  minimalModel : Prop

structure HomotopyTransferEvidence {G : CoalgebraPackage}
    {F : TwistingMorphismPackage G} {S : BarCobarConstructionPackage F}
    {C : BarCobarComplexPackage S} (H : HomotopyTransferPackage C) where
  homotopyRetractClosed : H.homotopyRetract
  perturbationLemmaClosed : H.perturbationLemma
  minimalModelClosed : H.minimalModel

def HomotopyTransferClosed {G : CoalgebraPackage}
    {F : TwistingMorphismPackage G} {S : BarCobarConstructionPackage F}
    {C : BarCobarComplexPackage S} (H : HomotopyTransferPackage C) : Prop :=
  H.homotopyRetract ∧ H.perturbationLemma ∧ H.minimalModel

theorem homotopy_transfer_closed_from_evidence
    {G : CoalgebraPackage} {F : TwistingMorphismPackage G}
    {S : BarCobarConstructionPackage F} {C : BarCobarComplexPackage S}
    (H : HomotopyTransferPackage C) (E : HomotopyTransferEvidence H) :
    HomotopyTransferClosed H := by
  exact And.intro E.homotopyRetractClosed
    (And.intro E.perturbationLemmaClosed E.minimalModelClosed)

end BarCobarConstructionsLemmaCanonicalLaneLean
end HautevilleHouse
