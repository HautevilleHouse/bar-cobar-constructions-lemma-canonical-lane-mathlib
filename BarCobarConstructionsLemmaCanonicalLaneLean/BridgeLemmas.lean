import BarCobarConstructionsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsLemmaCanonicalLaneLean

def QuasiIsomorphismClosed (O : BarCobarAdmittedObject) : Prop :=
  O.barCobarQuasiIsomorphism

def bridgeClosed (A : AdmissibleClass) : Prop :=
  QuasiIsomorphismClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.barCobarQuasiIsomorphism

end BarCobarConstructionsLemmaCanonicalLaneLean
end HautevilleHouse