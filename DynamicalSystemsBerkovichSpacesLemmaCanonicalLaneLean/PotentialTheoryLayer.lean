import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure PotentialTheoryLayer (A : AdmissibleClass) where
  baseSpace : Type
  potentialFunction : baseSpace → ℝ
  laplacian : baseSpace → Measure baseSpace
  energyFinite : Prop
  equilibriumMeasure : Measure baseSpace
  potentialClosed : energyFinite ∧ equilibriumMeasure ≠ 0

structure PotentialTheoryEvidence {A : AdmissibleClass} (P : PotentialTheoryLayer A) where
  energyFiniteClosed : P.energyFinite
  equilibriumMeasureClosed : P.equilibriumMeasure ≠ 0

def PotentialTheoryClosed {A : AdmissibleClass} (P : PotentialTheoryLayer A) : Prop :=
  P.energyFinite ∧ P.equilibriumMeasure ≠ 0

theorem potential_theory_closed_from_evidence {A : AdmissibleClass} (P : PotentialTheoryLayer A) (E : PotentialTheoryEvidence P) : PotentialTheoryClosed P := by
  exact And.intro E.energyFiniteClosed E.equilibriumMeasureClosed

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse