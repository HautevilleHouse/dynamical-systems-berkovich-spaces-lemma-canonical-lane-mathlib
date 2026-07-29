import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure BerkovichAffinoid where
  field : Type u
  charZero : CharZero field
  completeNonArch : CompleteNonArchimedeanField field
  affinoidAlgebra : Type v
  isAffinoid : Prop
  spectralNorm : affinoidAlgebra → ℝ
  boundedSeminorm : IsMultiplicativeSeminorm spectralNorm
  affinoidClosed : isAffinoid ∧ IsComplete affinoidAlgebra spectralNorm

structure BerkovichAffinoidEvidence (A : BerkovichAffinoid) where
  isAffinoidClosed : A.isAffinoid
  completeClosed : IsComplete A.affinoidAlgebra A.spectralNorm

def BerkovichAffinoidClosed (A : BerkovichAffinoid) : Prop :=
  A.isAffinoid ∧ IsComplete A.affinoidAlgebra A.spectralNorm

theorem berkovich_affinoid_closed_from_evidence (A : BerkovichAffinoid) (E : BerkovichAffinoidEvidence A) : BerkovichAffinoidClosed A := by
  exact And.intro E.isAffinoidClosed E.completeClosed

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse