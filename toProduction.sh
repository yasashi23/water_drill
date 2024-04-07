find . -type f -name "*.scss" -delete && find . -type d -name "scss" -exec rm -rf {} + && rm -rf .git .gitignore nodemodules/ *.md Pdf_asset/ public\(eng\)/ && find . -type f -name "*.sh" -delete
