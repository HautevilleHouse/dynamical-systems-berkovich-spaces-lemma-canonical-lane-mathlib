import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure BerkovichSpace (k : Type) [Field k] where
  multiplicativeSeminorm : Type u
  analyticStructure : Prop
  topologicalSpace : TopologicalSpace multiplicativeSeminorm
  nonArchimedean : Prop
  completeness : Prop

structure DynamicalSystem (X : BerkovichSpace ℚ) where
  endomorphism : X.multiplicativeSeminorm → X.multiplicativeSeminorm
  iterates : ℕ → (X.multiplicativeSeminorm → X.multiplicativeSeminorm)
  dynamicsControlled : Prop
  berkovichDynamicalLemma : Prop
  lemmaEvidence : berkovichDynamicalLemma

structure DynamicalSystemEvidence (X : BerkovichSpace ℚ) (D : DynamicalSystem X) where
  dynamicsControlledClosed : D.dynamicsControlled
  berkovichDynamicalLemmaClosed : D.berkovichDynamicalLemma

def DynamicalSystemClosed (X : BerkovichSpace ℚ) (D : DynamicalSystem X) : Prop :=
  D.dynamicsControlled ∧ D.berkovichDynamicalLemma

theorem dynamical_system_closed_from_evidence
    (X : BerkovichSpace ℚ) (D : DynamicalSystem X) (E : DynamicalSystemEvidence X D) :
    DynamicalSystemClosed X D := by
  exact And.intro E.dynamicsControlledClosed E.berkovichDynamicalLemmaClosed

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse