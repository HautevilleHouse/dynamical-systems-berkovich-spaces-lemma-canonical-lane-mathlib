import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

def ConstrainedBerkovichLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_berkovich_lemma_endgame (A : AdmissibleClass) :
    ConstrainedBerkovichLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse