import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure BerkovichProjectiveLine where
  baseField : Type u
  valuation : baseField → ℚ
  projectiveLine : Type v
  topology : TopologicalSpace projectiveLine
  structureSheaf : Type w
  analyticStructure : Prop
  completeness : Prop

def BerkovichProjectiveLineClosed (B : BerkovichProjectiveLine) : Prop :=
  B.analyticStructure ∧ B.completeness

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse
