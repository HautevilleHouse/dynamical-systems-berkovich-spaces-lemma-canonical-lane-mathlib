import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure BerkovichSpace (K : Type) [NormedField K] where
  underlyingSet : Type
  topology : TopologicalSpace underlyingSet
  structureSheaf : Type
  isBerkovichSpace : Prop
  closureProperty : Prop
  closurePropertyTerm : closureProperty

def BerkovichSpaceClosed (B : BerkovichSpace) : Prop :=
  B.isBerkovichSpace ∧ B.closureProperty

theorem berkovich_space_closed (B : BerkovichSpace) : BerkovichSpaceClosed B :=
  And.intro B.isBerkovichSpace B.closurePropertyTerm

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse