-- -*- lua -*-
{# NOTE: Lmod 9.2.2 renders help() as Markdown, and paired underscores or asterisks
   become italics everywhere except inside a fenced block. Anything containing
   them (environment variables, output format names) must stay inside a fence. #}
{% set has_subcommands = version_number is version('15.0.0', '>=') %}
{% set examples_dir = install_dir ~ '/examples' %}
{% set jar_path = install_dir ~ '/exomiser-cli-' ~ version_number ~ '.jar' %}
help([[
{% if has_subcommands %}
Exomiser {{ version_number }}
==============

Exomiser finds likely disease-causing variants in exome or genome sequencing
data. It annotates and filters the variants in a VCF file, then ranks the
remaining genes by how well they match the phenotype of the patient, which
you describe using HPO terms. It handles single samples and small families.

Quick start
-----------

Loading this module also loads {{ java_module }} and gives you an "exomiser"
command. This runs the bundled Pfeiffer syndrome example and takes a few
minutes. FGFR2 should come out as the top-ranked gene.

```
module load exomiser/{{ version_number }}

exomiser analyse \
    --analysis {{ examples_dir }}/preset-exome-analysis.yml \
    --sample {{ examples_dir }}/pfeiffer-phenopacket.yml \
    --vcf {{ examples_dir }}/Pfeiffer.vcf.gz \
    --assembly hg19 \
    --output-directory exomiser-results
```

Open the HTML file in exomiser-results to browse the ranked genes.

Commands
--------

- exomiser analyse: run one analysis.
- exomiser batch: run many analyses from a file, loading the data only once.
- exomiser annotate: annotate single variants or a VCF file.
- exomiser --help, or exomiser analyse --help: list every option.

What an analysis needs
----------------------

- A VCF file, given with --vcf, plus --assembly hg19 or --assembly hg38.
- The phenotype as HPO terms, in a phenopacket given with --sample.
- For a family VCF, a PED file given with --ped, or a phenopacket family
  that already contains the pedigree.
- Optionally an analysis file given with --analysis, which sets the
  filters, inheritance modes and data sources. Without one, the exome
  preset is used.

Copy an example and edit it rather than starting from nothing:

```
ls {{ examples_dir }}
cp {{ examples_dir }}/pfeiffer-phenopacket.yml my-sample.yml
cp {{ examples_dir }}/preset-exome-analysis.yml my-analysis.yml
```

The preset files are the upstream recommended settings for this release:
preset-exome-analysis.yml, preset-exome-analysis-with-introns.yml,
preset-exome-analysis-human-only.yml, preset-phenotype-only-analysis.yml
and preset-genome-analysis.yml (see the note on REMM below).

Output
------

Results go to the directory given with --output-directory, which should be
somewhere you can write to. Use --output-filename to set the file name
prefix and --output-format to choose formats, comma separated:

```
--output-format HTML,PARQUET,TSV_GENE,TSV_VARIANT,VCF
```

HTML is the easiest to read. PARQUET is compact and the best choice for
downstream analysis. Line-delimited JSON is the most detailed.

Reference data
--------------

The data is installed centrally, so you do not need to download anything.

- Location: {{ exomiser_data_dir }}
{% if item.data_version is defined %}
- Release: {{ item.data_version }}, for both hg19 and hg38, plus phenotype data.
{% endif %}
- REMM and CADD are not installed. An analysis that lists REMM or CADD in
  its pathogenicitySources stops with an error, and this includes the
  unmodified preset-genome-analysis.yml. Remove REMM from that line of your
  copy, or supply the files yourself as described below.

The module points Exomiser at the central settings file through an
environment variable, so the command works from any directory:

```
SPRING_CONFIG_LOCATION={{ install_dir }}/application.properties
```

To use your own settings, for example to add REMM or CADD or to use a
different data release, copy that file, edit the copy, and name it as the
last argument of your command:

```
cp {{ install_dir }}/application.properties my-application.properties

exomiser analyse --analysis my-analysis.yml --sample my-sample.yml \
    --output-directory exomiser-results \
    --spring.config.location=my-application.properties
```

Memory
------

The module caps the Java heap at 16 GB, which is enough for a whole genome.
An exome needs about 4 GB and a genome about 12 GB. Ask Slurm for a few GB
more than the heap. To change the cap, set this after loading the module:

```
export _JAVA_OPTIONS=-Xmx8g
```

For genomes, setting analysisMode to PASS_ONLY in the analysis file reduces
memory use considerably.

Running as a Slurm job
----------------------

Do not run analyses on the login node. In a job script, call the jar with
java directly, because the "exomiser" shortcut is a shell alias and aliases
are not always available in non-interactive shells.

```
#!/bin/bash
#SBATCH --job-name=exomiser
#SBATCH --cpus-per-task=4
#SBATCH --mem=20G
#SBATCH --time=02:00:00

module load exomiser/{{ version_number }}

java -jar {{ jar_path }} analyse \
    --analysis my-analysis.yml \
    --sample my-sample.yml \
    --vcf my-sample.vcf.gz \
    --assembly hg38 \
    --output-directory exomiser-results
```

Many samples
------------

The batch command reads a file with one set of analyse options per line and
runs them in turn, which avoids reloading the data for each sample. Check
the file with --dry-run first.

```
# my-batch.txt
--sample sample-1.yml --vcf sample-1.vcf.gz --assembly hg38 --output-directory results/sample-1
--sample sample-2.yml --vcf sample-2.vcf.gz --assembly hg38 --output-directory results/sample-2
```

```
exomiser batch --dry-run my-batch.txt
exomiser batch my-batch.txt
```

Moving from Exomiser 14 or earlier
----------------------------------

- A command word is now required. Add "analyse" after "exomiser", and
  replace the old --batch option with the "batch" command.
- The scoring model was retrained, so combined scores are not comparable
  with earlier releases. Recalibrate any score cutoffs in your pipeline.
- JSON output is now line-delimited, with the file suffix .jsonl.
- The HTML report has a new layout and PARQUET is a new output format.
- Start again from the preset analysis files in this release rather than
  reusing older ones.

More information
----------------

- Documentation: https://exomiser.readthedocs.io/en/stable
- Changes in this release: {{ install_dir }}/CHANGELOG.md
- Source and issues: https://github.com/exomiser/Exomiser
{% else %}
This module configures exomiser {{ version_number }} for use
{% endif %}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: exomiser")
whatis("Description: exomiser {{ version_number }}")

load("{{ java_module }}")

local exomiser_dir = "{{ install_dir }}"

setenv('_JAVA_OPTIONS', '-Xmx16g')
{% if has_subcommands %}
-- Exomiser only looks for application.properties in the working directory, so
-- without this the central data directory and data versions are not picked up.
setenv('SPRING_CONFIG_LOCATION', pathJoin(exomiser_dir, 'application.properties'))
{% endif %}

prepend_path('PATH', exomiser_dir)
prepend_path('CLASSPATH', exomiser_dir)

set_alias("exomiser", "java -jar {{ jar_path }}")
