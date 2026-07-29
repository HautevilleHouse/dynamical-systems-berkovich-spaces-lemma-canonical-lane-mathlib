import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure BerkovichSpace (K : Type u) [h : NormedField K] where
  point : Type v
  topology : TopologicalSpace point
  structureSheaf : Type w

structure DynamicalSystem (B : BerkovichSpace ℂ) where
  action : B.point → B.point
  continuousAction : Continuous action
  periodicPoints : Set B.point
  repellingPoints : Set B.point
  attractingPoints : Set B.point

structure BerkovichDynamicalPackage (B : BerkovichSpace ℂ) (Φ : DynamicalSystem B) where
  lyapunovExponent : Prop
  measureOfMaximalEntropy : Prop
  equidistributionCondition : Prop
  admissibilityBridge : Prop

structure BerkovichDynamicalEvidence {B : BerkovichSpace ℂ} {Φ : DynamicalSystem B} (Pkg : BerkovichDynamicalPackage B Φ) where
  lyapunovExponentClosed : Pkg.lyapunovExponent
  measureOfMaximalEntropyClosed : Pkg.measureOfMaximalEntropy
  equidistributionConditionClosed : Pkg.equidistributionCondition
  admissibilityBridgeClosed : Pkg.admissibilityBridge

def BerkovichDynamicalClosed {B : BerkovichSpace ℂ} {Φ : DynamicalSystem B} (Pkg : BerkovichDynamicalPackage B Φ) : Prop :=
  Pkg.lyapunovExponent ∧ Pkg.measureOfMaximalEntropy ∧ Pkg.equidistributionCondition ∧ Pkg.admissibilityBridge

theorem berkovich_dynamical_closed_from_evidence
    {B : BerkovichSpace ℂ} {Φ : DynamicalSystem B} (Pkg : BerkovichDynamicalPackage B Φ)
    (E : BerkovichDynamicalEvidence Pkg) : BerkovichDynamicalClosed Pkg := by
  exact And.intro E.lyapunovExponentClosed
    (And.intro E.measureOfMaximalEntropyClosed
      (And.intro E.equidistributionConditionClosed E.admissibilityBridgeClosed))

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse