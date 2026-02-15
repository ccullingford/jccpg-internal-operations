#!/usr/bin/env bash
set -e

BASE="$HOME/Documents/JCCPG Internal Operations"

create_doc () {
  FILE="$1"
  mkdir -p "$(dirname "$FILE")"
  if [ ! -f "$FILE" ]; then
    cat <<EOF > "$FILE"
# Document Title

**Document Name:** $(basename "$FILE")
**Version:** 0.1 (Draft)
**Effective Date:** 
**Owner:** Chris Cullingford
**Approved By:** 
**Review Cadence:** Annual or as needed
**Supersedes:** N/A

---

## 1. Purpose

---

## 2. Scope

---

## 3. Definitions (If Applicable)

---

## 4. Policy / Standard

---

## 5. Procedures

---

## 6. Roles & Responsibilities

---

## 7. Escalation

---

## 8. Documentation Requirements

---

## 9. Review & Revision History

| Version | Date | Description | Author |
|---------|------|------------|--------|
| 0.1 | | Initial Draft | |

---

*End of Document*
EOF
  fi
}

# Example documents
create_doc "$BASE/04_Operational Standards/Board_Meeting_SOP.md"
create_doc "$BASE/04_Operational Standards/Violation_Workflow_SOP.md"
create_doc "$BASE/04_Operational Standards/Emergency_Response_SOP.md"
create_doc "$BASE/02_Legal & Compliance/Litigation_Response_Protocol.md"
create_doc "$BASE/03_AI Governance/AI_Change_Management_Policy.md"
create_doc "$BASE/05_Brand & Voice/Email_Writing_Standards.md"

echo "Internal document shells created."
