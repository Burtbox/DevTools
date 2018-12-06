$folderToRemove = "C:\FolderToRemove"

mkdir empty_dir
robocopy empty_dir $folderToRemove /s /mir
rmdir empty_dir
rmdir $folderToRemove
