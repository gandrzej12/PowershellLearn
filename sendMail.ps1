Send-MailMessage -From 'User01 <user01@fabrikam.com>' 
-To 'User02 <user02@fabrikam.com>', 'User03 <user03@fabrikam.com>' 
-Subject 'Sending the Attachment' 
-Body "Forgot to send the attachment. Sending now." 
-Attachments .\data.csv 
-Priority High 
-DeliveryNotificationOption OnSuccess, OnFailure 
-SmtpServer 'smtp.fabrikam.com'



Send-MailMessage -From 'User01 <user01@fabrikam.com>' 
-To 'User02 <user02@fabrikam.com>' 
-Subject 'Test mail'


Send-MailMessage -To “<recipient’s email address>” 
-From “<sender’s email address>”  
-Subject “Your message subject” 
-Body “Some important plain text!” 
-Credential (Get-Credential) 
-SmtpServer “<smtp server>” 
-Port 587

Send-MailMessage -To “jon-snow@winterfell.com” 
-From “mother-of-dragons@houseoftargaryen.net”  
-Subject “Hey, Jon” 
-Body “Some important plain text!” 
-Credential (Get-Credential) 
-SmtpServer “smtp.mailtrap.io” 
-Port 587