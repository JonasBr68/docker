$mfp = Get-ChildItem -Path (Join-Path $env:windir '\servicing\Packages\') -Filter '*.mum';
foreach ($file in $mfp) { 
	Write-Host $file.FullName;
	(Get-Content $file.FullName).replace(' restart="required"', '') | Set-Content $file.FullName;
};
