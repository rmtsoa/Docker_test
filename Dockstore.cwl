class: CommandLineTool 
doc: FastQC 
id: fastqc-v0.11.4 
label: "FastQC v0.11.4" 

cwlVersion: v1.0

 
dct:creator:
  foaf:name: Rosemarie Tsoa
  foaf:mbox: "mailto:rmtsoa@gmail.com" 

requirements:
  - class: DockerRequirement
    dockerPull: "quay.io/rmtsoa/Docker_test:latest" 

hints:
  - class: ResourceRequirement
    coresMin: 1
    ramMin: 1000 inputs:
  fastq:
    type: File
    doc: "FastQ file to be analyzed"
    inputBinding:
      position: 1 outputs:
  zippedFile:
    type: File
    outputBinding:
      glob: '*.zip'
  report:
    type: Directory
    outputBinding:
      glob: .
      
baseCommand: [fastqc, --outdir, ., --extract]
