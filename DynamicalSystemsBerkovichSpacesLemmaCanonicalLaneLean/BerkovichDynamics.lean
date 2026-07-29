import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure BerkovichDynamicalSystem (B : BerkovichProjectiveLine) where
  endomorphism : B.projectiveLine → B.projectiveLine
  continuousEndo : Continuous endomorphism
  degree : ℕ
  markedPoints : List B.projectiveLine

def BerkovichDynamicalSystemClosed (B : BerkovichProjectiveLine) (D : BerkovichDynamicalSystem B) : Prop :=
  D.continuousEndo ∧ D.degree > 0

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse
