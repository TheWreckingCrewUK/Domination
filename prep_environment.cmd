@ECHO OFF

echo Making hard junction links to Domination core within mission folders...

for /d %%i in (*) do (
	IF /I "%%i" == "Domination_Core" (
		echo Skipping Domination_Core...
	) else (
		IF /I "%%i" == "tools" (
			echo Skipping Tools...
		) else (
			echo Adding Domination_Core to %%i
			mklink /j ".\%%i\Domination_Core" ".\Domination_Core\"
		)
	)
)

PAUSE