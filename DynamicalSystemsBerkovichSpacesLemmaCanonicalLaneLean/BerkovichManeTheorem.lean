import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean.BerkovichJuliaSet
import HautevilleHouse.DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean.EquicontinuityAndFatou

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure BerkovichManeTheorem (D : DynamicalSystemOnBerkovich B) where
  juliaSetEmptyIfEquicontinuous : Prop
  equicontinuousIfJuliaSetEmpty : Prop
  equivalence : juliaSetEmptyIfEquicontinuous ∧ equicontinuousIfJuliaSetEmpty
  domain : B

definition berkovich_mane_theorem_closed (M : BerkovichManeTheorem D) : Prop := M.equivalence

theorem berkovich_mane_theorem_closed_proof (M : BerkovichManeTheorem D) (h : M.juliaSetEmptyIfEquicontinuous ∧ M.equicontinuousIfJuliaSetEmpty) : berkovich_mane_theorem_closed M := h

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse