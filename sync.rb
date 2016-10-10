# Fetch remote resources
`git pull origin dev`
`git add --all`

# Create README File Flashback Version
`rm README.md`
File.open('README.md', 'a') do |f|
end

# Create README File Normal Version
`rm README_Humanize.md`
File.open('README_Humanize.md', 'a') do |f|
end

# Update remote resources
`git commit -m "Update"`
`git push origin dev`

