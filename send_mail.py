import smtplib      

fromAddr = 'type_your_from_address_here'
toAddr = 'type_your_to_address_here'
smtpServer='your_smtp_server_here'      
smtp_port = 25

text= "This is a test of sending email from within Python."
server = smtplib.SMTP(smtpServer,smtp_port)
server.ehlo()
server.starttls()
server.sendmail(fromAddr, toAddr, text) 
server.quit()