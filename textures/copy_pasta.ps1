# Define an array of source directories and the output file path
$sourceDirs = @(
    "C:\Users\Bartek\work\projects\js\three\three-tulip\public\textures"
)
$outputFile = "C:\Users\Bartek\work\projects\js\three\three-tulip\public\textures\output.txt"

# Remove the output file if it already exists
if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

# Loop through each directory in the array
foreach ($sourceDir in $sourceDirs) {
    # Loop through each .js file in the current directory
    Get-ChildItem -Path $sourceDir | ForEach-Object {
        # Get the full absolute path of the file
        $filePath = $_.FullName
        # Read the file content as a single string


        # Append the full file path in square brackets, the content, and an empty line to the output file
        Add-Content -Path $outputFile -Value "[$filePath]"

    }
}
