# WPC2022 Demo
In the folder WPC2022 you can find
- Two Power Apps saved as .msapp file
- 3D Models and .png files for example
- Script to create SharePoint Online list, columns and contents

After you donwloaded WPC2022 folder in your file sytem, follow these steps to use Mixed Reality Power Apps in your tenant

# Create SharePoint Online Structure
All Power Apps created for this demo use a SharePoint site and lists as backend.
You may create lists, columns and contents in each type of SharePoint Online sites that you have.

Prerequisites:
- Ensure that you have the PNP.Powershell module installed in your machine

  https://www.powershellgallery.com/packages/PnP.PowerShell/1.11.0

- To manage consent for PNP.Powershell in your tenant follow this article

  https://www.agrenpoint.com/pnp-powershell-consent-and-authentication/
  
Steps:
- Edit file ImportLists.ps1 and insert the correct parameter

  $SiteURL = "https://xxx.sharepoint.com/sites/SiteSample" -> is the url of site where you want create the lists
  
  $username = "admin@xxx.onmicrosoft.com" -> username
  
  $password = "xxx" -> password
  
  $PathExport = "D:\Temp\WPC2022\" -> Path where you have downloaded WPC2022 folder
  
  Save all changes
  
- Open Windows Powershell and execute ImportList.ps1 file
  .\ImportList.ps1
  
  ![image](https://user-images.githubusercontent.com/22641502/197073427-245efd4d-a92d-4a77-a114-b4b7ed7cb4b8.png)






