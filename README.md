
# Jon Sundin's LaTeX CV

This repository contains the source code for Jon Sundin's CV, written in LaTeX. The CV uses a custom class file (`jon-sundin-cv.cls`) for styling.

## Files

- `jon-sundin-cv.cls`: Custom LaTeX class file for the CV.
- `jon-sundin-cv.tex`: Main LaTeX file for the CV.
- `jon-sundin-cv.pdf`: Compiled PDF of the CV.

## Requirements

- LaTeX distribution (e.g., TeX Live, MacTeX)
- `latexmk` for automated LaTeX compilation

## Usage

To compile the CV, use the following command:

```bash
latexmk -pdf jon-sundin-cv.tex
```

To clean auxiliary files generated during compilation, use:

```bash
latexmk -C
```

You can customize the CV by modifying the `jon-sundin-cv.tex` file, such as updating the name, contact information, and sections as needed.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
