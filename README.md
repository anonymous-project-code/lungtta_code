---

language:

* en
  library_name: stable-audio-tools
  license: other
  license_name: stable-audio-community
  license_link: LICENSE
  pipeline_tag: text-to-audio
  extra_gated_prompt: By clicking "Agree", you agree to the [License Agreement](https://huggingface.co/stabilityai/stable-audio-open-1.0/blob/main/LICENSE.md)
  and acknowledge Stability AI's [Privacy Policy](https://stability.ai/privacy-policy).
  extra_gated_fields:
  Name: text
  Email: text
  Country: country
  Organization or Affiliation: text
  Receive email updates and promotions on Stability AI products, services, and research?:
  type: select
  options:
  - 'Yes'
  - 'No'
  What do you intend to use the model for?:
  type: select
  options:
  - Research
  - Personal use
  - Creative Professional
  - Startup
  - Enterprise
  I agree to the License Agreement and acknowledge Stability AI's Privacy Policy: checkbox

---

# LungTTA: Text-to-Audio Generation of Respiratory Sounds

This project builds on **Stable Audio Open 1.0** and the official **stable-audio-tools** codebase to support text-to-audio generation for respiratory health sounds.

Stable Audio Open 1.0 provides the original text-to-audio model, including the autoencoder, text-conditioning module, and transformer-based diffusion model. LungTTA adapts this pipeline toward respiratory audio generation, including cough, breathing, wheeze-like sounds, and phonation-related respiratory prompts.

## Important Setup Note

This repository does **not** replace the original Stable Audio Open 1.0 codebase.
To run the LungTTA pipeline, users should first download and set up the official Stability AI repository:

https://github.com/stability-ai/stable-audio-tools

Users also need to access/download the Stable Audio Open 1.0 model from Hugging Face after agreeing to the model license:

https://huggingface.co/stabilityai/stable-audio-open-1.0

After setting up the original Stable Audio Open 1.0 environment, the LungTTA files in this project can be added on top of the original codebase.

## LungTTA Pipeline

The LungTTA pipeline follows the Stable Audio Open 1.0 framework but adapts it for respiratory sound generation.

The main steps are:

1. **Start from Stable Audio Open 1.0**
   The original model and training/inference framework are taken from the official `stable-audio-tools` repository.

2. **Add LungTTA respiratory audio data and prompts**
   Respiratory audio samples are paired with text descriptions, such as cough type, breathing pattern, phonation sound, smoker/non-smoker information, age group, and respiratory condition information where available.

3. **Use the LungTTA model configuration**
   The model configuration file is the main configuration used to define the training and generation setup. This includes the audio settings, model structure, diffusion settings, and conditioning setup.

4. **Run the pipeline on the HPC cluster**
   The `main.sh` script is used to run the LungTTA pipeline on our high-performance computing cluster. This script launches the training or fine-tuning process using the selected model configuration.

5. **Generate respiratory audio from text prompts**
   After training or fine-tuning, the model can generate respiratory audio from prompts such as dry cough, wet cough, wheeze-like breathing, sustained vowels, and other respiratory sound descriptions.

## Our Contributions

The original Stable Audio Open 1.0 model and codebase are developed by Stability AI.
Our contribution in LungTTA is the adaptation of this text-to-audio pipeline for respiratory health research.

The main LungTTA contributions include:

* adapting Stable Audio Open 1.0 for respiratory text-to-audio generation;
* preparing a respiratory audio prompt format for cough, breathing, wheeze, and phonation sounds;
* adding project-specific configuration files for respiratory audio generation;
* running the training/fine-tuning pipeline on a high-performance computing cluster using `main.sh`;
* supporting the generation of synthetic respiratory sounds for research use;
* providing the foundation for future respiratory sound generation experiments and evaluation.

## Code Availability

This repository currently contains only a **snippet of the LungTTA code and configuration**.

The full codebase is not yet uploaded. Additional scripts, configuration files, and documentation will be added gradually to this project until the complete LungTTA pipeline is available.

Users should therefore treat the current release as a partial research-code release. To reproduce the full setup, users must first install the original Stable Audio Open 1.0 codebase from Stability AI and then add the LungTTA files provided in this repository.

## Usage Overview

First, clone and install the official Stable Audio tools repository:

```bash
git clone https://github.com/stability-ai/stable-audio-tools.git
cd stable-audio-tools
pip install -e .
```

Then download or access the Stable Audio Open 1.0 model from Hugging Face after accepting the license terms.

After that, add the LungTTA project files into the working Stable Audio Open 1.0 environment.

The HPC script can then be launched using:

```bash
bash main.sh
```

The `main.sh` script is designed for our high-performance computing cluster and may need to be adjusted for other computing environments.

## Model Description

LungTTA uses Stable Audio Open 1.0 as the base text-to-audio generation framework. Stable Audio Open 1.0 generates variable-length stereo audio at 44.1 kHz from text prompts. It uses an autoencoder to compress audio waveforms, a T5-based text encoder for text conditioning, and a transformer-based diffusion model that operates in the latent space of the autoencoder.

In LungTTA, this framework is adapted for respiratory sound generation rather than general music or sound-effect generation.

## Intended Use

LungTTA is intended for research and experimentation in respiratory acoustic AI, including:

* synthetic respiratory sound generation;
* text-guided cough, breathing, and phonation sound generation;
* data augmentation research for respiratory audio models;
* exploration of generative AI methods for respiratory health and well-being research.

## Out-of-Scope Use

LungTTA should not be used as a medical diagnostic tool.
Generated audio should not be treated as real patient data.
The model should not be used in clinical decision-making without further validation, risk assessment, and ethical approval.

## Limitations

* The current repository contains only a partial code release.
* Users must install the official Stable Audio Open 1.0 codebase separately.
* The `main.sh` script is configured for our high-performance computing cluster and may require changes for other systems.
* Generated respiratory sounds are synthetic and may not fully represent real clinical respiratory sounds.
* The model is intended for research use and not for direct clinical deployment.

## License

This project builds on Stable Audio Open 1.0 and follows the relevant Stability AI license terms.
Users must review and agree to the Stable Audio Open 1.0 license before using the model.
