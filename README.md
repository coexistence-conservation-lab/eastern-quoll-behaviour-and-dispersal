# Eastern quoll behaviour and dispersal

Here we describe the analyses conducted for the journal article Gee *et al*. (in prep) "*Ranging after reintroduction: do behavioural traits predict dispersal into new territory?*".

## Abstract

Reintroductions are important tools for reversing biodiversity loss, and there is increasing evidence that individual behavioural syndromes (e.g., personality and plasticity) of founders can drive their outcomes. Despite this, there are no known documented cases of selecting founders based on personality and plasticity, perhaps because they are often laborious and costly.

To address this, we conducted field-based behavioural assays on eastern quolls (*Dasyurus viverrinus*) from two self-selecting populations: (1) the original safe haven where the species was reintroduced, and (2) a new, adjacent haven that eastern quolls could disperse to but not leave. We aimed to determine whether rapid field assays could detect behavioural differences between these populations, and whether these differences influence these populations’ dynamics and traits.
 
We found significant demographic, morphological, and behavioural differences between the two populations, with those in the original haven being more likely to be behaviourally proactive (i.e., lower latencies to emerge, greater activity levels) and plastic (more able to change behaviour over time). Those in the new haven were more likely to be reactive (greater latencies to emerge, and lower activity levels) and rigid, and have greater body weights and condition scores, and be aged 1–2 years old (as opposed to the original haven where their ages covered the full life expectancy of <4 years old). 

We have demonstrated a novel method for conducting rapid field-based behavioural assessments of a reactive mammal, providing practitioners with a tool to explore behavioural syndromes and how they influence reintroduction outcomes and population dynamics.

## Repository structure

This repository follows an organised structure for clarity and reproducibility:
- `input` folder: contains datasets required for analyses (e.g., raw data tables, geospatial data files, etc.).
- `output` folder: contains datasets generated from these analyses (e.g., processed data tables, maps, plots, etc.).
- `.gitattributes`: manages repository-specific configurations.
- `.gitignore`: specifies intentionally untracked files to be ignored by Git (e.g., large files or sensitive information).
- `analyses.Rmd`: R markdown containing the workflow for the project's analyses, including narrative text, code, and results.
- `project.Rproj`: RStudio Project file for managing the R environment to ensure consistent working directories and settings.
- `README.md`: provides an overview of the repository and instructions for usage (i.e., what you're reading right now).
- `tutorial.html`: rendered HTML output of the `analyses.Rmd` markdown, serving as a shareable tutorial that summarises the project's analyses and results.