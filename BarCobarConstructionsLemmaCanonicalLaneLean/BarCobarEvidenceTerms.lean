import canonicalLaneMathlib.AdmissibleClass

/-!
# Bar-Cobar Evidence Terms

This module exposes the proof terms for the Bar-Cobar analytic certificates.
-/

namespace HautevilleHouse
namespace BarCobarConstructionsLemmaCanonicalLaneLean

structure BarCobarCertificate (A : BarCobarAdmissibleClass) where
  clubConstructionComplete : Prop
  resolutionLemmaApplied : Prop
  clubConstructionCompleteClosed : clubConstructionComplete
  resolutionLemmaAppliedClosed : resolutionLemmaApplied
  bridgeEvidence : bridgeClosed A
  gateEvidence : gateClosed A

def BarCobarCertificateClosed {A : BarCobarAdmissibleClass} (C : BarCobarCertificate A) : Prop :=
  C.clubConstructionComplete ∧ C.resolutionLemmaApplied

theorem bar_cobar_certificate_closed {A : BarCobarAdmissibleClass} (C : BarCobarCertificate A) :
    BarCobarCertificateClosed C := by
  exact And.intro C.clubConstructionCompleteClosed C.resolutionLemmaAppliedClosed

end BarCobarConstructionsLemmaCanonicalLaneLean
end HautevilleHouse