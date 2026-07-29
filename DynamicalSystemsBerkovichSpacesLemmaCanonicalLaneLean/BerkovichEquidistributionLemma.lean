import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure BerkovichEquidistributionPackage (B : BerkovichSpace ℂ) (Φ : DynamicalSystem B) where
  pointwiseEquidistribution : Prop
  potentialTheoryAdmissible : Prop
  heightFunctionDefined : Prop
  admissibilityBridge : Prop

structure BerkovichEquidistributionEvidence {B : BerkovichSpace ℂ} {Φ : DynamicalSystem B} (Pkg : BerkovichEquidistributionPackage B Φ) where
  pointwiseEquidistributionClosed : Pkg.pointwiseEquidistribution
  potentialTheoryAdmissibleClosed : Pkg.potentialTheoryAdmissible
  heightFunctionDefinedClosed : Pkg.heightFunctionDefined
  admissibilityBridgeClosed : Pkg.admissibilityBridge

def BerkovichEquidistributionClosed {B : BerkovichSpace ℂ} {Φ : DynamicalSystem B} (Pkg : BerkovichEquidistributionPackage B Φ) : Prop :=
  Pkg.pointwiseEquidistribution ∧ Pkg.potentialTheoryAdmissible ∧ Pkg.heightFunctionDefined ∧ Pkg.admissibilityBridge

theorem berkovich_equidistribution_closed_from_evidence
    {B : BerkovichSpace ℂ} {Φ : DynamicalSystem B} (Pkg : BerkovichEquidistributionPackage B Φ)
    (E : BerkovichEquidistributionEvidence Pkg) : BerkovichEquidistributionClosed Pkg := by
  exact And.intro E.pointwiseEquidistributionClosed
    (And.intro E.potentialTheoryAdmissibleClosed
      (And.intro E.heightFunctionDefinedClosed E.admissibilityBridgeClosed))

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse