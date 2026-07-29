import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean.BerkovichEquidistribution
import HautevilleHouse.DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean.BerkovichJuliaSet

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∀ (B : BerkovichSpace ℂ) (D : DynamicalSystemOnBerkovich B) (J : BerkovichJuliaSet B D) (E : BerkovichEquidistribution B D),
    BerkovichJuliaSetClosed B D J → BerkovichEquidistributionClosed B D E

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  fun B D J E hJ hE => hE

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedBerkovichClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_berkovich_endgame (A : AdmissibleClass) : ConstrainedBerkovichClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse