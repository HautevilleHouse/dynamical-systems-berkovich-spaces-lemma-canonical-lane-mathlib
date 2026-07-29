import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure BerkovichAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  berkovichStructure : Prop
  dynamicalSystem : Prop
  closureConclusion : Prop

structure AdmissibleClass where
  object : BerkovichAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.closureConclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse