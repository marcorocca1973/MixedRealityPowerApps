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

- In the site configured before you can see all necessary lists

  ![image](https://user-images.githubusercontent.com/22641502/197627995-0ad63a3a-d7be-4bf0-9a01-9a3e60b3c9cf.png)

  ![image](https://user-images.githubusercontent.com/22641502/197628081-f95f81eb-0730-4d81-8dcd-936a3128218d.png)
  
# Create a SharePoint connector
If in your environment you don't have a SharePoint connector remember to create it before go to the next step :)

# Import MixedReality2022Phone in your environment
- In your environment select "Import canvas app"
  ![image](https://user-images.githubusercontent.com/22641502/197628341-0f510151-85b5-4678-ba4e-bc4ad0e1ffb4.png)

- Select MixedReality2022Phone.zip file
  ![image](https://user-images.githubusercontent.com/22641502/197628653-bee0a0e5-cbec-4522-809e-e81ea109ddd3.png)
  
- Select Import
  ![image](https://user-images.githubusercontent.com/22641502/197628759-0f17d40b-28eb-4540-9fea-6a2cc8eca8a5.png)

- Now you need to open the app and change the connection
  ![image](https://user-images.githubusercontent.com/22641502/197630440-6483d5d0-df06-4a25-ba7a-20f7e85f41cf.png)

# Import QualityInspection in your environment
Repeat the steps above for import "QualityInspection.zip" file in your environment







