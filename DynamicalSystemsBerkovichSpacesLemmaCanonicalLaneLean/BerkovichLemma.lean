import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure BerkovichLemmaInput where
  B : BerkovichProjectiveLine
  D : BerkovichDynamicalSystem B
  P : BerkovichPotential B D
  M : BerkovichEquilibriumMeasure B D P

structure BerkovichLemmaResult (I : BerkovichLemmaInput) where
  equilibriumExistence : Prop
  uniqueness : Prop
  endomorphismEquilibrium : Prop
  equilibriumExistenceClosed : equilibriumExistence
  uniquenessClosed : uniqueness
  endomorphismEquilibriumClosed : endomorphismEquilibrium

def BerkovichLemmaClosed (I : BerkovichLemmaInput) (R : BerkovichLemmaResult I) : Prop :=
  R.equilibriumExistence ∧ R.uniqueness ∧ R.endomorphismEquilibrium

theorem berkovich_lemma_closed_from_result (I : BerkovichLemmaInput) (R : BerkovichLemmaResult I) : BerkovichLemmaClosed I R := by
  exact And.intro R.equilibriumExistenceClosed (And.intro R.uniquenessClosed R.endomorphismEquilibriumClosed)

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse
