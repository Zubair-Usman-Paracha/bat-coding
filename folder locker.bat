color a1
cls
 @ECHO OFF
 title My Folder
 if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
 if NOT EXIST Popeye goto MDLOCKER
 :CONFIRM
 echo Are you sure you want to lock the folder(Y/N)
 set/p "cho=>"
 if %cho%==Y goto LOCK
 if %cho%==y goto LOCK
 if %cho%==n goto END
 if %cho%==N goto END
 echo Invalid choice.
 goto CONFIRM
 :LOCK
 ren Popeye "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
 attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
 echo Folder locked
 goto End
 :UNLOCK
 echo Enter the Password to unlock folder
 set/p "pass=>"
 if NOT %pass%== mini goto FAIL
 attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
 ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Popeye
 echo Folder Unlocked successfully
 goto End
 :FAIL
 echo Invalid password
 goto end
 :MDLOCKER
 md Popeye
 echo Popeye created successfully
 goto End
 :End