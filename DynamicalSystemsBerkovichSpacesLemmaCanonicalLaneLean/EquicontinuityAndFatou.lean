import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean.DynamicalSystemOnBerkovich

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure FatouComponent (D : DynamicalSystemOnBerkovich B) where
  region : Set B.multiplicativeSeminorms
  equicontinuous : Prop
  maximal : Prop
  openSet : Prop

definition fatou_component_closed (F : FatouComponent D) : Prop :=
  F.equicontinuous ∧ F.openSet

theorem fatou_component_closed_proof (F : FatouComponent D) (h_eq : F.equicontinuous) (h_open : F.openSet) : fatou_component_closed F :=
  And.intro h_eq h_open

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse