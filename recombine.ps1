# Recombine parts into original file (0 re-encoding)
$concatList = "concat_list.txt"
@(
    "file '2026-11-21_02-43-46_part01.mp4'",
) | Out-File -FilePath $concatList -Encoding ascii
Write-Host "Recombining 1 parts into 2026-11-21_02-43-46.mp4..."
ffmpeg -y -f concat -safe 0 -i $concatList -c copy "2026-11-21_02-43-46.mp4"
Remove-Item $concatList
Write-Host "Done: 2026-11-21_02-43-46.mp4"
