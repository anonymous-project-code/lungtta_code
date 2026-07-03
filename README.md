---
language:
  - en
library_name: stable-audio-tools
license: other
license_name: stable-audio-community
license_link: LICENSE.md
pipeline_tag: text-to-audio
extra_gated_prompt: >
  By clicking "Agree", you agree to the
  [License Agreement](https://huggingface.co/stabilityai/stable-audio-open-1.0/blob/main/LICENSE.md)
  and acknowledge Stability AI's
  [Privacy Policy](https://stability.ai/privacy-policy).
extra_gated_fields:
  Name: text
  Email: text
  Country: country
  "Organization or Affiliation": text
  "Receive email updates and promotions on Stability AI products, services, and research?":
    type: select
    options:
      - "Yes"
      - "No"
  "What do you intend to use the model for?":
    type: select
    options:
      - Research
      - Personal use
      - Creative Professional
      - Startup
      - Enterprise
  "I agree to the License Agreement and acknowledge Stability AI's Privacy Policy": checkbox
---

# LungTTA: Text-to-Audio Generation of Synthetic Lung Sounds for Respiratory Health

LungTTA is a text-to-audio framework for generating synthetic respiratory sounds such as cough, breathing, and phonation from structured text prompts.

This project is based on the Stable Audio Open 1.0 framework and the official Stability AI `stable-audio-tools` codebase. LungTTA adapts the Stable Audio Open latent diffusion pipeline for respiratory health research by adding respiratory prompt conditioning, respiratory dataset preparation, retrieval-based memory conditioning, and project-specific model configuration.

The aim of LungTTA is to support research in respiratory acoustic AI, especially in settings where real respiratory audio data are limited because of privacy, ethical, clinical, and data-collection constraints.

## Paper Introduction

Respiratory audio analysis is limited by data scarcity, because real recordings are difficult to collect and often involve privacy, clinical, and ethical constraints. This makes it harder to train robust machine learning models for respiratory health applications.

LungTTA addresses this problem by using a text-to-audio latent diffusion framework to generate synthetic respiratory sounds from structured prompts. The model is designed to generate cough, breathing, wheeze-like sounds, and phonation signals. It is fine-tuned using publicly available respiratory audio datasets and includes retrieval-based memory conditioning to improve generation quality and diversity.

The generated samples are intended to support research and data augmentation. They should not be treated as real patient recordings or used for medical diagnosis.

## Important Setup Requirement

This repository does not replace the original Stable Audio Open 1.0 codebase.

To use this project, users must first download and install the official Stability AI repository:

[https://github.com/stability-ai/stable-audio-tools](https://github.com/stability-ai/stable-audio-tools)

Users must also access Stable Audio Open 1.0 from Hugging Face and agree to the model license:

[https://huggingface.co/stabilityai/stable-audio-open-1.0](https://huggingface.co/stabilityai/stable-audio-open-1.0)

After setting up Stable Audio Open 1.0, the LungTTA files in this repository can be added to the working Stable Audio environment.

## Current Repository Contents

This repository currently contains a partial release of the LungTTA code and configuration.

The current files include:

```text
cough_breath_dataset.json
LICENSE.md
main.sh
model_config.json
pre_encode.py
README.md
scheduler_config.json
tokenizer/
transformer/
