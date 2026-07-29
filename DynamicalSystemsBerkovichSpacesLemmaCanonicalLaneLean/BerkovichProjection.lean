import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure BerkovichEndgameState where
  object : BerkovichAdmittedObject

def berkovichProjection : Projection BerkovichEndgameState where
  toFun := fun x => x
  idempotent := by intro x; rfl

theorem berkovich_projection_idempotent (x : BerkovichEndgameState) :
    berkovichProjection.toFun (berkovichProjection.toFun x) = berkovichProjection.toFun x := by
  exact berkovichProjection.idempotent x

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse