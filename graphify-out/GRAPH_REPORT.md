# Graph Report - /home/dane/dev/ilifu/software/ansible/roles  (2026-05-06)

## Corpus Check
- Large corpus: 387 files · ~56,131 words. Semantic extraction will be expensive (many Claude tokens). Consider running on a subfolder, or use --no-semantic to run AST-only.

## Summary
- 720 nodes · 714 edges · 249 communities (228 shown, 21 thin omitted)
- Extraction: 90% EXTRACTED · 10% INFERRED · 0% AMBIGUOUS · INFERRED: 68 edges (avg confidence: 0.85)
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- [[_COMMUNITY_Containerised Common Software|Containerised Common Software]]
- [[_COMMUNITY_Astronomy & ilifu Compiled Tools|Astronomy & ilifu Compiled Tools]]
- [[_COMMUNITY_Heavy Build Dependencies|Heavy Build Dependencies]]
- [[_COMMUNITY_Compiled Bio Tools (Misc)|Compiled Bio Tools (Misc)]]
- [[_COMMUNITY_Python-Based Bio Tools|Python-Based Bio Tools]]
- [[_COMMUNITY_System Build Tools (CutadaptJuliaMamba)|System Build Tools (Cutadapt/Julia/Mamba)]]
- [[_COMMUNITY_Common System Libraries|Common System Libraries]]
- [[_COMMUNITY_Aligners & QC (BWAFastQCMinimap2)|Aligners & QC (BWA/FastQC/Minimap2)]]
- [[_COMMUNITY_Containerised Bio Pipelines|Containerised Bio Pipelines]]
- [[_COMMUNITY_Specialty Bio Containers (msPIPETRIBESpggb)|Specialty Bio Containers (msPIPE/TRIBES/pggb)]]
- [[_COMMUNITY_GEMINI Install Script Functions|GEMINI Install Script Functions]]
- [[_COMMUNITY_SRA Toolkit & SvAnna|SRA Toolkit & SvAnna]]
- [[_COMMUNITY_BLAST & InDelible|BLAST & InDelible]]
- [[_COMMUNITY_Python ML Stack|Python ML Stack]]
- [[_COMMUNITY_htslib-Based Variant Tools|htslib-Based Variant Tools]]
- [[_COMMUNITY_SAMtools Versions|SAMtools Versions]]
- [[_COMMUNITY_bcbio-nextgen  CD-HIT  Mash|bcbio-nextgen / CD-HIT / Mash]]
- [[_COMMUNITY_Population Genetics Bundle|Population Genetics Bundle]]
- [[_COMMUNITY_Short-Read Aligners|Short-Read Aligners]]
- [[_COMMUNITY_Container Runtime Tools (Apptainer)|Container Runtime Tools (Apptainer)]]
- [[_COMMUNITY_MPI Stack|MPI Stack]]
- [[_COMMUNITY_JVM Ecosystem|JVM Ecosystem]]
- [[_COMMUNITY_Numerical Libraries|Numerical Libraries]]
- [[_COMMUNITY_Pangenome Tools (seqwishwfmash)|Pangenome Tools (seqwish/wfmash)]]
- [[_COMMUNITY_BAM Manipulation Tools|BAM Manipulation Tools]]
- [[_COMMUNITY_Variation Graph Tools|Variation Graph Tools]]
- [[_COMMUNITY_GATK Versions|GATK Versions]]
- [[_COMMUNITY_Nanopore QC Tools|Nanopore QC Tools]]
- [[_COMMUNITY_GPU Stack (CUDAOllamaUCX)|GPU Stack (CUDA/Ollama/UCX)]]
- [[_COMMUNITY_Trycycler Containers|Trycycler Containers]]
- [[_COMMUNITY_smoothxg & deps|smoothxg & deps]]
- [[_COMMUNITY_chopper Versions|chopper Versions]]
- [[_COMMUNITY_Rust-Based GFA Tools|Rust-Based GFA Tools]]
- [[_COMMUNITY_GWAS Tools|GWAS Tools]]
- [[_COMMUNITY_Genome Assembly QC|Genome Assembly QC]]
- [[_COMMUNITY_Haplotype Tools|Haplotype Tools]]
- [[_COMMUNITY_Phylogenetic Inference|Phylogenetic Inference]]
- [[_COMMUNITY_RNA Quantification|RNA Quantification]]
- [[_COMMUNITY_PLINK Versions|PLINK Versions]]
- [[_COMMUNITY_Workflow Engines|Workflow Engines]]
- [[_COMMUNITY_Install Apache Maven task|Install Apache Maven task]]
- [[_COMMUNITY_Install Apache Spark task|Install Apache Spark task]]
- [[_COMMUNITY_Install Git task|Install Git task]]
- [[_COMMUNITY_Install Anaconda3 task|Install Anaconda3 task]]
- [[_COMMUNITY_Compiled Role README|Compiled Role README]]
- [[_COMMUNITY_Ubuntu Noble Compile Base Container|Ubuntu Noble Compile Base Container]]
- [[_COMMUNITY_Docker broadinstitutegatk4.2.6.1|Docker: broadinstitute/gatk:4.2.6.1]]
- [[_COMMUNITY_DIANN Container Task|DIANN Container Task]]
- [[_COMMUNITY_Boost|Boost]]
- [[_COMMUNITY_Docker mrbradley2clinsvv1.0|Docker: mrbradley2/clinsv:v1.0]]
- [[_COMMUNITY_Hifiasm|Hifiasm]]
- [[_COMMUNITY_RSEM|RSEM]]
- [[_COMMUNITY_MUSCLE MSA|MUSCLE MSA]]
- [[_COMMUNITY_Install singularity task|Install singularity task]]
- [[_COMMUNITY_Install Boost Library task|Install Boost Library task]]
- [[_COMMUNITY_GenomeStrip|GenomeStrip]]
- [[_COMMUNITY_Install bedtools (Ansible task)|Install bedtools (Ansible task)]]
- [[_COMMUNITY_MToolBox|MToolBox]]
- [[_COMMUNITY_Install stacks (Ansible task)|Install stacks (Ansible task)]]
- [[_COMMUNITY_Install seqkit (Ansible task)|Install seqkit (Ansible task)]]
- [[_COMMUNITY_filtlong|filtlong]]
- [[_COMMUNITY_Install reviewer (Ansible task)|Install reviewer (Ansible task)]]
- [[_COMMUNITY_MDAnalysis|MDAnalysis]]
- [[_COMMUNITY_bamtools|bamtools]]
- [[_COMMUNITY_Install CMake task|Install CMake task]]
- [[_COMMUNITY_Install GSL task|Install GSL task]]
- [[_COMMUNITY_Install fzf task|Install fzf task]]
- [[_COMMUNITY_Install Pandoc|Install Pandoc]]
- [[_COMMUNITY_Install rustup task|Install rustup task]]
- [[_COMMUNITY_Install rclone task|Install rclone task]]
- [[_COMMUNITY_Install Rust task|Install Rust task]]
- [[_COMMUNITY_Containers Role Handlers|Containers Role Handlers]]
- [[_COMMUNITY_Containers Role Defaults|Containers Role Defaults]]
- [[_COMMUNITY_Compiled Role Galaxy Metadata|Compiled Role Galaxy Metadata]]
- [[_COMMUNITY_Compiled Role Variables|Compiled Role Variables]]
- [[_COMMUNITY_Compiled Role Test Playbook|Compiled Role Test Playbook]]

## God Nodes (most connected - your core abstractions)
1. `Bioinformatics Category` - 95 edges
2. `Common Category` - 62 edges
3. `bioinformatics` - 24 edges
4. `compiled/tasks/bio/main.yml` - 24 edges
5. `Python ML Container` - 22 edges
6. `Role containers: bio/main.yml` - 15 edges
7. `samtools` - 15 edges
8. `SNVStory Python Requirements` - 11 edges
9. `Population Genetics Suite (PopGen)` - 11 edges
10. `Ansible Role: all` - 10 edges

## Surprising Connections (you probably didn't know these)
- `REViewer` --categorized_in--> `Bioinformatics Category`  [EXTRACTED]
  /home/dane/dev/ilifu/software/ansible/roles/compiled/tasks/bio/reviewer.yaml → ansible/roles/containers/README.md
- `seqkit` --categorized_in--> `Bioinformatics Category`  [EXTRACTED]
  /home/dane/dev/ilifu/software/ansible/roles/compiled/tasks/bio/seqkit.yaml → ansible/roles/containers/README.md
- `bedtools` --categorized_in--> `Bioinformatics Category`  [EXTRACTED]
  /home/dane/dev/ilifu/software/ansible/roles/compiled/tasks/bio/bedtools.yaml → ansible/roles/containers/README.md
- `Stacks` --categorized_in--> `Bioinformatics Category`  [EXTRACTED]
  /home/dane/dev/ilifu/software/ansible/roles/compiled/tasks/bio/stacks.yaml → ansible/roles/containers/README.md
- `Pandoc` --categorized_in--> `Common Category`  [EXTRACTED]
  /home/dane/dev/ilifu/software/ansible/roles/compiled/tasks/common/pandoc.yaml → ansible/roles/containers/README.md

## Communities (249 total, 21 thin omitted)

### Community 0 - "Containerised Common Software"
Cohesion: 0.06
Nodes (39): Gnuplot Container Task, Common Containers Main Tasks, Python ML Base Container Task, Python ML Container Task, RStudio Container Task, Ubuntu Base Container Task, BERT Base Uncased (HuggingFace model), deepseek-ai/deepseek-coder-6.7b-base (+31 more)

### Community 1 - "Astronomy & ilifu Compiled Tools"
Cohesion: 0.07
Nodes (35): Ubuntu Focal Base Container, calceph 2.3.2, Astronomy Category, Ilifu Internal Tools Category, cfitsio 3.450, cfitsio 4.3.1, calceph Compiled Install Task, cfitsio Compiled Install Task (+27 more)

### Community 2 - "Heavy Build Dependencies"
Cohesion: 0.08
Nodes (27): AmberTools, BEAGLE, Apptainer, CMake, CUDA, GATK, hwloc, Java/JDK (+19 more)

### Community 3 - "Compiled Bio Tools (Misc)"
Cohesion: 0.08
Nodes (25): Bioinformatics Category, ExpansionHunter, GenomeBrowser, GLIMPSE, MAFFT, Salmon, slivar, subread (+17 more)

### Community 4 - "Python-Based Bio Tools"
Cohesion: 0.1
Nodes (24): Canvas, CNVKit, CNVpytor, pipenv, Python, Medaka, MultiQC, spliceai (+16 more)

### Community 5 - "System Build Tools (Cutadapt/Julia/Mamba)"
Cohesion: 0.09
Nodes (24): Bioinformatics, Install fribidi task, Install Cutadapt, Install harfbuzz, Install Julia, Install Mamba, Install nanostat, Install Node.js (+16 more)

### Community 6 - "Common System Libraries"
Cohesion: 0.09
Nodes (23): Common Category, Install githubcli task, Install Graphviz task, Install gettext, Install neovim, Install zstd, Install jemalloc task, Install LAPACK task (+15 more)

### Community 7 - "Aligners & QC (BWA/FastQC/Minimap2)"
Cohesion: 0.12
Nodes (18): BWA, cutadapt, FastQC, Java, LIRICAL, Minimap2, Porechop, Task: Install bwa (+10 more)

### Community 8 - "Containerised Bio Pipelines"
Cohesion: 0.13
Nodes (17): Ubuntu Bionic Compile Base Container, BEAST Container Task, PopGen Suite Container Task, ADMIXTURE, Arlecore, bcbio-nextgen, BCFtools, Beagle (+9 more)

### Community 9 - "Specialty Bio Containers (msPIPE/TRIBES/pggb)"
Cohesion: 0.13
Nodes (15): msPIPE Container Task, TRIBES Container Task, Docker: chambm/pwiz-skyline-i-agree-to-the-vendor-licenses:3.0.22167, Role containers: bio/main.yml, msPIPE, msPIPE version 2.1, pggb (pangenome graph builder), pggb tag 20240928233843e8dd3f (+7 more)

### Community 10 - "GEMINI Install Script Functions"
Cohesion: 0.26
Nodes (11): check_dependencies(), clean_env_variables(), install_anaconda_python(), install_conda_pkgs(), install_rest(), main(), make_dirs(), Provide isolated installation of Anaconda python.     http://docs.continuum.io/a (+3 more)

### Community 11 - "SRA Toolkit & SvAnna"
Cohesion: 0.17
Nodes (12): bioinformatics, miniwdl, miniwdl 1.12.1, SRA Toolkit, SRA Toolkit 3.0.0, SvAnna, SvAnna 1.0.1, compiled/tasks/bio/sra_toolkit.yaml (+4 more)

### Community 12 - "BLAST & InDelible"
Cohesion: 0.17
Nodes (12): bcftools, bedtools, BLAST+, BLAST+ 2.15.0, BLAST+ 2.16.0, InDelible, InDelible 1.1.3, compiled/tasks/bio/blast.yaml (+4 more)

### Community 13 - "Python ML Stack"
Cohesion: 0.18
Nodes (11): awscli, bokeh, boto3, matplotlib, numpy, pandas, scikit-learn, scipy (+3 more)

### Community 14 - "htslib-Based Variant Tools"
Cohesion: 0.18
Nodes (11): htslib, PopDel, PopDel 1.5.0, SnpEff, Task: Install htslib, compiled/tasks/bio/popdel.yaml, compiled/tasks/bio/snpeff.yaml, compiled/tasks/bio/vep.yaml (+3 more)

### Community 15 - "SAMtools Versions"
Cohesion: 0.18
Nodes (11): samtools, samtools 1.10, samtools 1.13, samtools 1.14, samtools 1.17, samtools 1.18, samtools 1.19, samtools 1.19.2 (+3 more)

### Community 16 - "bcbio-nextgen / CD-HIT / Mash"
Cohesion: 0.2
Nodes (10): bcbio-nextgen, CD-HIT, CD-HIT 4.8.2, Mash, Mash 2.3, compiled/tasks/bio/bcbio.yaml, compiled/tasks/bio/main.yml, compiled/tasks/bio/cdhit.yaml (+2 more)

### Community 17 - "Population Genetics Bundle"
Cohesion: 0.22
Nodes (9): ADMIXTURE 1.3.0, Arlequin (arlecore) 3.5, bcftools 1.10.2, BEAGLE 3.1.2, EIGENSOFT 7.2.1, fineSTRUCTURE 2.1.3, PLINK2 2.00a2.3, SHAPEIT 2.17 (+1 more)

### Community 18 - "Short-Read Aligners"
Cohesion: 0.36
Nodes (8): Install Bismark (Ansible task), Install bowtie2 (Ansible task), Install HISAT2 (Ansible task), Install STAR (Ansible task), Bismark, bowtie2, HISAT2, STAR

### Community 19 - "Container Runtime Tools (Apptainer)"
Cohesion: 0.25
Nodes (8): Install apptainer, Install gocryptfs, Install Go, Install squashfuse task, Apptainer, gocryptfs, Go (Golang), squashfuse

### Community 20 - "MPI Stack"
Cohesion: 0.29
Nodes (8): Install hwloc task, Install Intel Toolkits task, Install OpenMPI task, Install PMIx task, hwloc, Intel oneAPI Toolkits, OpenMPI, PMIx

### Community 21 - "JVM Ecosystem"
Cohesion: 0.25
Nodes (8): Install Apache Hadoop, Install dotnet, Install Mono, Install OpenJDK, Apache Hadoop, .NET, Mono, OpenJDK

### Community 22 - "Numerical Libraries"
Cohesion: 0.29
Nodes (8): Install fftw, Install fftw precision variant, Install mpich, Install OpenBLAS, FFTW, FFTW precisions helper, MPICH, OpenBLAS

### Community 23 - "Pangenome Tools (seqwish/wfmash)"
Cohesion: 0.33
Nodes (7): GNU Scientific Library (GSL), htslib, jemalloc, seqwish, task: Install seqwish, task: Install wfmash, wfmash

### Community 24 - "BAM Manipulation Tools"
Cohesion: 0.29
Nodes (7): biobambam2, libmaus2, libmaus2 2.0.806, Picard, Task: Install biobambam2, compiled/tasks/bio/libmaus2.yaml, Task: Install Picard

### Community 25 - "Variation Graph Tools"
Cohesion: 0.4
Nodes (6): panacus, panpatch, Task: Install panacus, Task: Install panpatch, Task: Install vg, vg (Variation Graph Toolkit)

### Community 26 - "GATK Versions"
Cohesion: 0.33
Nodes (6): GATK, GATK 4.2.5.0, GATK 4.3.0.0, GATK 4.4.0.0, GATK 4.5.0.0, compiled/tasks/bio/gatk.yaml

### Community 27 - "Nanopore QC Tools"
Cohesion: 0.33
Nodes (6): NanoComp, NanoComp 1.23.1, NanoPlot, NanoPlot 1.41.0, compiled/tasks/bio/nanocomp.yaml, compiled/tasks/bio/nanoplot.yaml

### Community 28 - "GPU Stack (CUDA/Ollama/UCX)"
Cohesion: 0.33
Nodes (6): Install cuda task, Install ollama task, Install UCX task, NVIDIA CUDA Toolkit, Ollama, UCX Unified Communication X

### Community 29 - "Trycycler Containers"
Cohesion: 0.4
Nodes (5): Docker: quay.io/biocontainers/trycycler, Docker: quay.io/staphb/trycycler, Trycycler, Trycycler biocontainers 0.5.4--pyhdfd78af_0, Trycycler staphb 0.5.4

### Community 30 - "smoothxg & deps"
Cohesion: 0.4
Nodes (5): jemalloc, smoothxg, smoothxg 0.7.2-4, compiled/tasks/bio/smoothxg.yaml, zstd

### Community 31 - "chopper Versions"
Cohesion: 0.4
Nodes (5): chopper, chopper 0.6.0, chopper 0.7.0, Rust/Cargo, compiled/tasks/bio/chopper.yaml

### Community 32 - "Rust-Based GFA Tools"
Cohesion: 0.4
Nodes (5): Rust/Cargo toolchain, Install gfaffix (Ansible task), Install vcfbub (Ansible task), GFAffix, vcfbub

### Community 33 - "GWAS Tools"
Cohesion: 0.5
Nodes (4): gemma, PRSice-2, Task: Install gemma, Task: Install PRSice-2

### Community 34 - "Genome Assembly QC"
Cohesion: 0.5
Nodes (4): gfastats, meryl, Task: Install gfastats, Task: Install meryl

### Community 35 - "Haplotype Tools"
Cohesion: 0.5
Nodes (4): HAPGEN2, SHAPEIT5, task: Install HAPGEN2, task: Install shapeit5

### Community 36 - "Phylogenetic Inference"
Cohesion: 0.5
Nodes (4): IQ-TREE, PhyML, task: Install iqtree, task: Install phyml

### Community 37 - "RNA Quantification"
Cohesion: 0.5
Nodes (4): Bracken, kallisto, Task: Install Bracken, Task: Install kallisto

### Community 38 - "PLINK Versions"
Cohesion: 0.5
Nodes (4): PLINK-NG, PLINK 1.9, PLINK 2.00a2.3, compiled/tasks/bio/plink-ng.yaml

### Community 39 - "Workflow Engines"
Cohesion: 0.5
Nodes (4): Install Cromwell task, Install Nextflow task, Cromwell (with womtool), Nextflow

### Community 40 - "Install Apache Maven task"
Cohesion: 0.5
Nodes (4): Install Apache Maven task, Install Homebrew task, Apache Maven, Homebrew

### Community 41 - "Install Apache Spark task"
Cohesion: 0.5
Nodes (4): Install Apache Spark task, Install JRE task, Apache Spark, Java Runtime Environment

### Community 42 - "Install Git task"
Cohesion: 0.5
Nodes (4): Install Git task, Install Git LFS task, Git, Git LFS

### Community 43 - "Install Anaconda3 task"
Cohesion: 0.5
Nodes (4): Install Anaconda3 task, Install Micromamba task, Anaconda3, Micromamba

### Community 44 - "Compiled Role README"
Cohesion: 1.0
Nodes (3): Compiled Role README, Compiled from Source Installation Strategy, Compiled Ansible Role

### Community 45 - "Ubuntu Noble Compile Base Container"
Cohesion: 0.67
Nodes (3): Ubuntu Noble Compile Base Container, Spectronaut, Spectronaut version 20.0

### Community 46 - "Docker: broadinstitute/gatk:4.2.6.1"
Cohesion: 0.67
Nodes (3): Docker: broadinstitute/gatk:4.2.6.1, GATK (Genome Analysis Toolkit), GATK version 4.2.6.1

### Community 47 - "DIANN Container Task"
Cohesion: 0.67
Nodes (3): DIANN Container Task, DIA-NN, DIA-NN version 2.3.2

### Community 48 - "Boost"
Cohesion: 0.67
Nodes (3): Boost, HTStream, task: Install HTStream

### Community 49 - "Docker: mrbradley2/clinsv:v1.0"
Cohesion: 0.67
Nodes (3): Docker: mrbradley2/clinsv:v1.0, ClinSV, ClinSV version 1.0.0

### Community 50 - "Hifiasm"
Cohesion: 0.67
Nodes (3): Hifiasm, Hifiasm 0.25.0, compiled/tasks/bio/hifiasm.yaml

### Community 51 - "RSEM"
Cohesion: 0.67
Nodes (3): RSEM, RSEM 1.3.3, compiled/tasks/bio/rsem.yaml

### Community 52 - "MUSCLE MSA"
Cohesion: 0.67
Nodes (3): MUSCLE MSA, MUSCLE 5.3, compiled/tasks/bio/muscle.yaml

### Community 53 - "Install singularity task"
Cohesion: 0.67
Nodes (3): Install singularity task, Go programming language, Singularity Container Runtime

### Community 54 - "Install Boost Library task"
Cohesion: 0.67
Nodes (3): Install Boost Library task, Boost C++ Library, Python 3

## Ambiguous Edges - Review These
- `Task: Install slivar (empty)` → `slivar`  [AMBIGUOUS]
  ansible/roles/compiled/tasks/bio/slivar.yaml · relation: installs

## Knowledge Gaps
- **265 isolated node(s):** `Provide isolated installation of Anaconda python.     http://docs.continuum.io/a`, `Install biological data and tests used by gemini.`, `Adjust environmental variables which can cause conflicts with installed anaconda`, `Ensure required tools for installation are present.`, `Role all: tasks/main.yml` (+260 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **21 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **What is the exact relationship between `Task: Install slivar (empty)` and `slivar`?**
  _Edge tagged AMBIGUOUS (relation: installs) - confidence is low._
- **Why does `Bioinformatics Category` connect `Compiled Bio Tools (Misc)` to `Astronomy & ilifu Compiled Tools`, `Heavy Build Dependencies`, `Python-Based Bio Tools`, `Aligners & QC (BWA/FastQC/Minimap2)`, `Containerised Bio Pipelines`, `Specialty Bio Containers (msPIPE/TRIBES/pggb)`, `htslib-Based Variant Tools`, `Population Genetics Bundle`, `Short-Read Aligners`, `Pangenome Tools (seqwish/wfmash)`, `BAM Manipulation Tools`, `Variation Graph Tools`, `Trycycler Containers`, `Rust-Based GFA Tools`, `GWAS Tools`, `Genome Assembly QC`, `Haplotype Tools`, `Phylogenetic Inference`, `RNA Quantification`, `Ubuntu Noble Compile Base Container`, `Docker: broadinstitute/gatk:4.2.6.1`, `DIANN Container Task`, `Boost`, `Docker: mrbradley2/clinsv:v1.0`, `GenomeStrip`, `Install bedtools (Ansible task)`, `MToolBox`, `Install stacks (Ansible task)`, `Install seqkit (Ansible task)`, `filtlong`, `Install reviewer (Ansible task)`, `MDAnalysis`, `bamtools`?**
  _High betweenness centrality (0.399) - this node is a cross-community bridge._
- **Why does `Common Category` connect `Common System Libraries` to `Containerised Common Software`, `System Build Tools (Cutadapt/Julia/Mamba)`, `Container Runtime Tools (Apptainer)`, `MPI Stack`, `JVM Ecosystem`, `Numerical Libraries`, `GPU Stack (CUDA/Ollama/UCX)`, `Workflow Engines`, `Install Apache Maven task`, `Install Apache Spark task`, `Install Git task`, `Install Anaconda3 task`, `Install singularity task`, `Install Boost Library task`, `Install CMake task`, `Install GSL task`, `Install fzf task`, `Install Pandoc`, `Install rustup task`, `Install rclone task`, `Install Rust task`?**
  _High betweenness centrality (0.222) - this node is a cross-community bridge._
- **Why does `Singularity` connect `Containerised Common Software` to `Containerised Bio Pipelines`, `Astronomy & ilifu Compiled Tools`, `Specialty Bio Containers (msPIPE/TRIBES/pggb)`, `DIANN Container Task`?**
  _High betweenness centrality (0.207) - this node is a cross-community bridge._
- **What connects `Provide isolated installation of Anaconda python.     http://docs.continuum.io/a`, `Install biological data and tests used by gemini.`, `Adjust environmental variables which can cause conflicts with installed anaconda` to the rest of the system?**
  _265 weakly-connected nodes found - possible documentation gaps or missing edges._
- **Should `Containerised Common Software` be split into smaller, more focused modules?**
  _Cohesion score 0.06 - nodes in this community are weakly interconnected._
- **Should `Astronomy & ilifu Compiled Tools` be split into smaller, more focused modules?**
  _Cohesion score 0.07 - nodes in this community are weakly interconnected._