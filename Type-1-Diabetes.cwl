cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  unstable-type-1-diabetes---primary:
    run: unstable-type-1-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  maculopathy-type-1-diabetes---primary:
    run: maculopathy-type-1-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: unstable-type-1-diabetes---primary/output
  type-1-diabetes-ketoacidosis---primary:
    run: type-1-diabetes-ketoacidosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: maculopathy-type-1-diabetes---primary/output
  type-1-diabetes-complication---primary:
    run: type-1-diabetes-complication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: type-1-diabetes-ketoacidosis---primary/output
  polyneuropathy-type-1-diabetes---primary:
    run: polyneuropathy-type-1-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: type-1-diabetes-complication---primary/output
  ophthalmic-type-1-diabetes---primary:
    run: ophthalmic-type-1-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: polyneuropathy-type-1-diabetes---primary/output
  renal-type-1-diabetes---primary:
    run: renal-type-1-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ophthalmic-type-1-diabetes---primary/output
  nephropathy-type-1-diabetes---primary:
    run: nephropathy-type-1-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: renal-type-1-diabetes---primary/output
  retinopathy-type-1-diabetes---primary:
    run: retinopathy-type-1-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: nephropathy-type-1-diabetes---primary/output
  type-1-diabetes-control---primary:
    run: type-1-diabetes-control---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: retinopathy-type-1-diabetes---primary/output
  insulindependent-type-1-diabetes---primary:
    run: insulindependent-type-1-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: type-1-diabetes-control---primary/output
  multiple-type-1-diabetes---primary:
    run: multiple-type-1-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: insulindependent-type-1-diabetes---primary/output
  neuropathic-type-1-diabetes---primary:
    run: neuropathic-type-1-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: multiple-type-1-diabetes---primary/output
  arthropathy-type-1-diabetes---primary:
    run: arthropathy-type-1-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: neuropathic-type-1-diabetes---primary/output
  neurological-type-1-diabetes---primary:
    run: neurological-type-1-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: arthropathy-type-1-diabetes---primary/output
  type-1-diabetes-gangrene---primary:
    run: type-1-diabetes-gangrene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: neurological-type-1-diabetes---primary/output
  mononeuropathy-type-1-diabetes---primary:
    run: mononeuropathy-type-1-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: type-1-diabetes-gangrene---primary/output
  type-1-diabetes-gastroparesis---primary:
    run: type-1-diabetes-gastroparesis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: mononeuropathy-type-1-diabetes---primary/output
  type-1-diabetes-ulcer---primary:
    run: type-1-diabetes-ulcer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: type-1-diabetes-gastroparesis---primary/output
  persistent-type-1-diabetes---primary:
    run: persistent-type-1-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: type-1-diabetes-ulcer---primary/output
  type-1-diabetes-cataract---primary:
    run: type-1-diabetes-cataract---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: persistent-type-1-diabetes---primary/output
  type-1-diabetes-microalbuminuria---primary:
    run: type-1-diabetes-microalbuminuria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: type-1-diabetes-cataract---primary/output
  hypoglycaemic-type-1-diabetes---primary:
    run: hypoglycaemic-type-1-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: type-1-diabetes-microalbuminuria---primary/output
  type-1-diabetes-mellitus---primary:
    run: type-1-diabetes-mellitus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: hypoglycaemic-type-1-diabetes---primary/output
  ketoacidotic-type-1-diabetes---primary:
    run: ketoacidotic-type-1-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: type-1-diabetes-mellitus---primary/output
  angiopathy-type-1-diabetes---primary:
    run: angiopathy-type-1-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ketoacidotic-type-1-diabetes---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: angiopathy-type-1-diabetes---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
