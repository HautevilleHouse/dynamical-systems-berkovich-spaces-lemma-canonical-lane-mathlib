import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure BerkovichPotential (B : BerkovichProjectiveLine) (D : BerkovichDynamicalSystem B) where
  function : B.projectiveLine → ℝ
  continuous : Continuous function
  subharmonic : Prop
  energy : ℝ

def BerkovichPotentialClosed (B : BerkovichProjectiveLine) (D : BerkovichDynamicalSystem B) (P : BerkovichPotential B D) : Prop :=
  P.subharmonic ∧ P.energy ≥ 0

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse
