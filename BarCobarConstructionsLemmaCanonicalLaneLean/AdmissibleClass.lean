import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsLemmaCanonicalLaneLean

structure BarCobarAdmittedObject where
  barComplex : Type
  cobarComplex : Type
  chainComplexStructure : Prop
  barCobarQuasiIsomorphism : Prop

structure AdmissibleClass where
  object : BarCobarAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  QuasiIsomorphismClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BarCobarConstructionsLemmaCanonicalLaneLean
end HautevilleHouse