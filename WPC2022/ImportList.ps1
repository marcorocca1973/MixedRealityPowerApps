#Config Variables
Function Add-Attachment($Item, $AttachmentPath)
{
  $FileContent = [System.IO.File]::ReadAllBytes($AttachmentPath)
  $Item.Attachments.Add([System.IO.Path]::GetFileName($AttachmentPath), $FileContent)
  $Item.Update()
  
  Write-host "Attachment Added to List Item Successfully!"
}


$SiteURL = "https://xxxx.sharepoint.com/sites/DemoXXX"
$username = "xxx@yyyy.onmicrosoft.com"
$password = "xxx"
$PathExport = "C:\Temp\DemoMR\ExportContent\" #Select the correct path

$cred = New-Object -TypeName System.Management.Automation.PSCredential -argumentlist $username , $(convertto-securestring $password -asplaintext -force)

 
#Connect to PNP Online

Connect-PnPOnline -Url $SiteURL -Credentials $cred

$TemplateFile = $PathFile + "MixedRealityModels.xml"
Write-Host "Creating MixedRealityModels from Template..."
Invoke-PnPSiteTemplate -Path $TemplateFile

Add-PnPListItemAttachment -List "MixedRealityModels" -Identity 1 -Path Attachment\coffee_bag.glb
Add-PnPListItemAttachment -List "MixedRealityModels" -Identity 1 -Path Attachment\coffee_bag.png

Set-PnPListItem -List "MixedRealityModels" -Identity 1 -Values @{"ImageLink" = "$SiteURL/Lists/MixedRealityModels/Attachments/1/coffee_bag.png, $SiteURL/Lists/MixedRealityModels/Attachments/4/coffee_bag.png"; "_x0033_DLink"="$SiteURL/Lists/MixedRealityModels/Attachments/1/coffee_bag.glb, $SiteURL/Lists/MixedRealityModels/Attachments/4/coffee_bag.glb"}


Add-PnPListItemAttachment -List "MixedRealityModels" -Identity 2 -Path Attachment\coffee_cup.glb
Add-PnPListItemAttachment -List "MixedRealityModels" -Identity 2 -Path Attachment\coffee_cup.png

Set-PnPListItem -List "MixedRealityModels" -Identity 2 -Values @{"ImageLink" = "$SiteURL/Lists/MixedRealityModels/Attachments/2/coffee_cup.png, $SiteURL/Lists/MixedRealityModels/Attachments/2/coffee_cup.png"; "_x0033_DLink"="$SiteURL/Lists/MixedRealityModels/Attachments/2/coffee_cup.glb, $SiteURL/Lists/MixedRealityModels/Attachments/2/coffee_cup.glb"}

Add-PnPListItemAttachment -List "MixedRealityModels" -Identity 3 -Path Attachment\coffee_mug.glb
Add-PnPListItemAttachment -List "MixedRealityModels" -Identity 3 -Path Attachment\coffee_mug.png

Set-PnPListItem -List "MixedRealityModels" -Identity 3 -Values @{"ImageLink" = "$SiteURL/Lists/MixedRealityModels/Attachments/3/coffee_mug.png, $SiteURL/Lists/MixedRealityModels/Attachments/3/coffee_mug.png"; "_x0033_DLink"="$SiteURL/Lists/MixedRealityModels/Attachments/3/coffee_mug.glb, $SiteURL/Lists/MixedRealityModels/Attachments/3/coffee_mug.glb"}

Add-PnPListItemAttachment -List "MixedRealityModels" -Identity 4 -Path Attachment\coffee_grinder.glb
Add-PnPListItemAttachment -List "MixedRealityModels" -Identity 4 -Path Attachment\coffee_grinder.png

Set-PnPListItem -List "MixedRealityModels" -Identity 4 -Values @{"ImageLink" = "$SiteURL/Lists/MixedRealityModels/Attachments/4/coffee_grinder.png, $SiteURL/Lists/MixedRealityModels/Attachments/4/coffee_grinder.png"; "_x0033_DLink"="$SiteURL/Lists/MixedRealityModels/Attachments/4/coffee_grinder.glb, $SiteURL/Lists/MixedRealityModels/Attachments/4/coffee_grinder.glb"}

Add-PnPListItemAttachment -List "MixedRealityModels" -Identity 5 -Path Attachment\modern_sofa.glb
Add-PnPListItemAttachment -List "MixedRealityModels" -Identity 5 -Path Attachment\modern_sofa.png

Set-PnPListItem -List "MixedRealityModels" -Identity 5 -Values @{"ImageLink" = "$SiteURL/Lists/MixedRealityModels/Attachments/5/modern_sofa.png, $SiteURL/Lists/MixedRealityModels/Attachments/5/modern_sofa.png"; "_x0033_DLink"="$SiteURL/Lists/MixedRealityModels/Attachments/5/modern_sofa.glb, $SiteURL/Lists/MixedRealityModels/Attachments/5/modern_sofa.glb"}

Add-PnPListItemAttachment -List "MixedRealityModels" -Identity 6 -Path Attachment\industrial_table.glb
Add-PnPListItemAttachment -List "MixedRealityModels" -Identity 6 -Path Attachment\industrial_table.png

Set-PnPListItem -List "MixedRealityModels" -Identity 6 -Values @{"ImageLink" = "$SiteURL/Lists/MixedRealityModels/Attachments/6/industrial_table.png, $SiteURL/Lists/MixedRealityModels/Attachments/6/industrial_table.png"; "_x0033_DLink"="$SiteURL/Lists/MixedRealityModels/Attachments/6/industrial_table.glb, $SiteURL/Lists/MixedRealityModels/Attachments/6/industrial_table.glb"}


$TemplateFile = $PathFile + "QualityProduct.xml"
Write-Host "Creating Quality Product from Template..."
Invoke-PnPSiteTemplate -Path $TemplateFile


$TemplateFile = $PathFile + "QualityAssurance.xml"
Write-Host "Creating Quality Assurance from Template..."
Invoke-PnPSiteTemplate -Path $TemplateFile

$TemplateFile = $PathFile + "QualityAssurancePhoto.xml"
Write-Host "Creating Quality Assurance Photo from Template..."
Invoke-PnPSiteTemplate -Path $TemplateFile

$TemplateFile = $PathFile + "MixedRealityUploadedImage.xml"
Write-Host "Creating MixedRealityUploadedImage from Template..."
Invoke-PnPSiteTemplate -Path $TemplateFile










