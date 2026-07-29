import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure DynamicalBerkovichClosure (A : AdmissibleClass) : Prop where
  affinoidCovered : A.object.space → Prop
  actionContinuous : A.object.space → A.object.space
  invariantMeasures : Set (Measure A.object.space)
  ergodicDecomposition : Prop
  closureProps : affinoidCovered ∧ ergodicDecomposition

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse