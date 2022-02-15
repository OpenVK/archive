Write-Host -ForegroundColor Yellow "Pulling chandler..."

git clone https://github.com/openvk/chandler.git build

Write-Host -ForegroundColor Yellow "Pulling OpenVK..."

git clone https://github.com/openvk/openvk.git build/extensions/available/openvk

Write-Host -ForegroundColor Yellow "Writing default configuration..."

Copy-Item src/chandler.yml -Destination build/chandler.yml
Copy-Item src/openvk.yml -Destination build/extensions/available/openvk/openvk.yml
