cwlVersion: v1.2
class: CommandLineTool

baseCommand: ["python"]

requirements:
    InlineJavascriptRequirement: {}
    InitialWorkDirRequirement:
        listing:
            - $(inputs.fa_database)
            - $(inputs.pyscript)



inputs:
    pyscript:
        type: File
        inputBinding:
            position: 1
    fa_database:
        type: Directory
        inputBinding:
            position: 2
    scenario:
        type: string
        inputBinding:
            position: 3

outputs:
    fa_database:
        type: Directory
        outputBinding:
            glob: "$(inputs.fa_database.basename)"