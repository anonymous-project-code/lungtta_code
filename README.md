---
language:
  - en
library_name: stable-audio-tools
license: other
license_name: stable-audio-community
license_link: LICENSE
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
  Organization or Affiliation: text
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
