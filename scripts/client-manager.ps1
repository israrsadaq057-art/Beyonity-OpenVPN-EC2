# BEYONITY OPENVPN CLIENT MANAGEMENT
# Add or revoke artist certificates

param(
    [Parameter(Mandatory=$true)]
    [ValidateSet("add", "revoke", "list")]
    [string]$Action,
    
    [string]$ClientName
)

$ServerIp = "13.218.143.190"
$KeyPath = "C:\beyonity-cicd-project\ConsoleRenderKey.pem"

if ($Action -eq "add") {
    Write-Host "Adding client: $ClientName" -ForegroundColor Yellow
    ssh -i $KeyPath ubuntu@$ServerIp "sudo bash openvpn-install.sh client add $ClientName"
    Write-Host "Download config: scp -i $KeyPath ubuntu@$ServerIp:/home/ubuntu/$ClientName.ovpn ." -ForegroundColor Gray
}
elseif ($Action -eq "revoke") {
    Write-Host "Revoking client: $ClientName" -ForegroundColor Yellow
    ssh -i $KeyPath ubuntu@$ServerIp "sudo bash openvpn-install.sh client revoke $ClientName"
}
elseif ($Action -eq "list") {
    Write-Host "Listing all clients" -ForegroundColor Yellow
    ssh -i $KeyPath ubuntu@$ServerIp "sudo bash openvpn-install.sh client list"
}
