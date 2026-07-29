import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure BerkovichEquilibriumMeasure (B : BerkovichProjectiveLine) (D : BerkovichDynamicalSystem B) (P : BerkovichPotential B D) where
  measureSpace : Type u
  measure : MeasureTheory.Measure measureSpace
  supportedOn : Set B.projectiveLine
  invariance : ∀ U : Set B.projectiveLine, D.endomorphism '' U ∈ measure.measurableSet → measure (D.endomorphism '' U) = measure U
  finiteEnergy : ℝ

def BerkovichEquilibriumMeasureClosed (B : BerkovichProjectiveLine) (D : BerkovichDynamicalSystem B) (P : BerkovichPotential B D) (M : BerkovichEquilibriumMeasure B D P) : Prop :=
  M.finiteEnergy ≥ 0

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse
