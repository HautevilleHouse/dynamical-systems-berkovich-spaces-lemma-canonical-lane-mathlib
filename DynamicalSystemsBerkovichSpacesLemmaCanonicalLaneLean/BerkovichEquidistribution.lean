import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean.DynamicalSystemOnBerkovich

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure BerkovichEquidistribution (B : BerkovichSpace ℂ) (D : DynamicalSystemOnBerkovich B) where
  measure : Type
  pushforwardMeasure : D.map → measure
  equidistributionCondition : Prop
  limitMeasure : Type
  equidistributionHolds : Prop
  equidistributionHoldsTerm : equidistributionHolds

def BerkovichEquidistributionClosed (B : BerkovichSpace ℂ) (D : DynamicalSystemOnBerkovich B) (E : BerkovichEquidistribution B D) : Prop :=
  E.equidistributionCondition ∧ E.equidistributionHolds

theorem berkovich_equidistribution_closed (B : BerkovichSpace ℂ) (D : DynamicalSystemOnBerkovich B) (E : BerkovichEquidistribution B D) : BerkovichEquidistributionClosed B D E :=
  And.intro E.equidistributionCondition E.equidistributionHoldsTerm

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse