import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean.DynamicalSystemOnBerkovich

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure BerkovichJuliaSet (B : BerkovichSpace ℂ) (D : DynamicalSystemOnBerkovich B) where
  set : Set B.underlyingSet
  isClosed : IsClosed set
  forwardInvariant : D.map '' set ⊆ set
  repellingPeriodicPointsDense : Prop
  repellingPeriodicPointsDenseTerm : repellingPeriodicPointsDense

def BerkovichJuliaSetClosed (B : BerkovichSpace ℂ) (D : DynamicalSystemOnBerkovich B) (J : BerkovichJuliaSet B D) : Prop :=
  IsClosed J.set ∧ J.forwardInvariant ∧ J.repellingPeriodicPointsDense

theorem berkovich_julia_set_closed (B : BerkovichSpace ℂ) (D : DynamicalSystemOnBerkovich B) (J : BerkovichJuliaSet B D) : BerkovichJuliaSetClosed B D J :=
  And.intro J.isClosed (And.intro J.forwardInvariant J.repellingPeriodicPointsDenseTerm)

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse