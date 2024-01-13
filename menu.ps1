function DisplayMenu {
Clear-Host
Write-Host @"
+===============================================+
|    MEUS APP'S MAIS USADOS - USER MENU         | 
+===============================================+
|                                               |
|    1) DESEJA INSTALAR?                        |
|    2) DESEJA ATUALIZAR APPS DO WINDOWS?       |
|    3) SAIR                                    |
+===============================================+

"@

$MENU = Read-Host "OPTION"
Switch ($MENU)
{
1 {
$OPTION1 = "1"
Write-Host "Instalando seus apps!"
winget install Microsoft.powerToys;winget install 7zip.7zip;winget install Microsoft.VisualStudioCode;winget install Notepad++.Notepad++;winget install Valve.Steam;winget install Discord.Discord;winget install ObsProject.OBSStudio;winget install Wagnardsoft.DisplayDriverUnistaller;winget install CPUID.CPU-Z;winget install XP8K4RGX25G3GM;winget install CrystalDewWorld.CrystalDiskMark;winget install GIMP.GIMP; winget install VideoLAN.VLC;winget install qBittorrent.qBittorrent;winget install TechPowerUp.GPU-Z

Start-Sleep -Seconds 2

}

2 {
$OPTION1 = "2"
Write-Host "Atualizando os seus apps! se aparecer algo do tipo nenhum pacote foi instalado, vc ja tem os apps atualizados!"
winget upgrade --all

Start-Sleep -Seconds 2

}




3 {
#OPTION3 - EXIT
Write-Host "Saindo..."
Break
}
default {
#DEFAULT OPTION
Write-Host "Option not available"
Start-Sleep -Seconds 2
DisplayMenu
}
}
}
DisplayMenu