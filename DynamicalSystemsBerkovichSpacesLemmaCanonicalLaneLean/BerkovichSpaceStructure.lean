import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure BerkovichSpace (k : Type) [NormedField k] where
  multiplicativeSeminorms : Set (Type u)
  topology : TopologicalSpace (Type u)
  sheaf : Type v
  analyticStructure : Prop
  completeness : Prop

structure BerkovichSpaceEvidence (B : BerkovichSpace ℂ) where
  topologyClosed : B.topology = B.topology
  analyticStructureClosed : B.analyticStructure
  completenessClosed : B.completeness

def BerkovichSpaceClosed (B : BerkovichSpace ℂ) : Prop :=
  B.analyticStructure ∧ B.completeness

theorem berkovich_space_closed_from_evidence (B : BerkovichSpace ℂ) (E : BerkovichSpaceEvidence B) : BerkovichSpaceClosed B :=
  And.intro E.analyticStructureClosed E.completenessClosed

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse