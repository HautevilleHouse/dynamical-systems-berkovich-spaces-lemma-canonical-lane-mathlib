import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean.BerkovichSpace

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure DynamicalSystemOnBerkovich (B : BerkovichSpace ℂ) where
  map : B.underlyingSet → B.underlyingSet
  continuity : Continuous map
  compatibleWithStructure : Prop
  analyticProperties : Prop
  analyticPropertiesTerm : analyticProperties

structure DynamicalSystemEvidence (B : BerkovichSpace ℂ) (D : DynamicalSystemOnBerkovich B) where
  continuityClosed : D.continuity
  compatibleWithStructureClosed : D.compatibleWithStructure
  analyticPropertiesClosed : D.analyticProperties

def DynamicalSystemClosed (B : BerkovichSpace ℂ) (D : DynamicalSystemOnBerkovich B) : Prop :=
  D.continuity ∧ D.compatibleWithStructure ∧ D.analyticProperties

theorem dynamical_system_closed_from_evidence (B : BerkovichSpace ℂ) (D : DynamicalSystemOnBerkovich B) (E : DynamicalSystemEvidence B D) : DynamicalSystemClosed B D :=
  And.intro E.continuityClosed (And.intro E.compatibleWithStructureClosed E.analyticPropertiesClosed)

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse