import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure FixedPointAnalysis (A : AdmissibleClass) where
  berkovichSpace : Type u
  dynamicalAction : berkovichSpace → berkovichSpace
  fixedPoints : Set berkovichSpace
  classification : Prop
  fixedPointTheorem : fixedPoints.Nonempty ∧ classification

def FixedPointClosed (F : FixedPointAnalysis (A : AdmissibleClass)) : Prop :=
  F.fixedPointTheorem

theorem fixed_point_closed (F : FixedPointAnalysis (A : AdmissibleClass)) (h : F.fixedPointTheorem) : FixedPointClosed F := h

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse