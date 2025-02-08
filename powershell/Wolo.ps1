function wolo {
        $awake = Test-Connection -BufferSize 32 -Count 1 -ComputerName 192.168.1.18 -Quiet
         if ( $awake
          ) {
             echo "Oceanus is Up and AT-EM!"
			 wt -M -p Oceanus
        }else { echo "ZZZZZ.... Oceanus seems to be resting"
				echo "Hold on while I wake them"
            & "C:\Program Files\Aquila Technology\WakeOnLAN\WakeOnLanc.exe" -w -m oceanus
        }
     Start-Sleep -Seconds 10
	 wt -M -p Oceanus
     }

     wolo
