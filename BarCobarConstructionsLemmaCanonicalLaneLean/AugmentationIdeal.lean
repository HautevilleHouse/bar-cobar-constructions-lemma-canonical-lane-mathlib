import BarCobarConstructionsLemmaCanonicalLaneLean.BarConstruction

namespace HautevilleHouse
namespace BarCobarConstructionsLemmaCanonicalLaneLean

structure AugmentationIdealPackage where
  algebra : Type
  augmentation : Type
  kernelIdeal : Type
  augmentationProperty : Prop

structure AugmentationIdealEvidence (A : AugmentationIdealPackage) where
  augmentationPropertyClosed : A.augmentationProperty

def AugmentationIdealClosed (A : AugmentationIdealPackage) : Prop :=
  A.augmentationProperty

theorem augmentation_ideal_closed_from_evidence (A : AugmentationIdealPackage) (E : AugmentationIdealEvidence A) : AugmentationIdealClosed A :=
  E.augmentationPropertyClosed

end BarCobarConstructionsLemmaCanonicalLaneLean
end HautevilleHouse
