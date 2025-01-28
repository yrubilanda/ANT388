pwd_gmail <- "uogy dfqb kkad ucmm"

install.packages("emayili")
install.packages("tidyverse")

library(emayili)
library(tidyverse)

envelope() #creates new message, this has arguments:
''' from, to, subject, and text'''

message_gmail <- envelope(from = "yrubilanda@utexas.edu", to = "makkevin08@gmail.com",
                          subject = "Sending a message using {emayili}", text = "Hello! Text me if this works.")


smtp_gmail <- gmail(username = "yrubilanda@utexas.edu", password = pwd_gmail)

# send using Google's Gmail server...
smtp_gmail(message_gmail, verbose = TRUE)


message_yrubi <- envelope(from = "yrubilanda@utexas.edu", to = "yeseniarubilanda@gmail.com",
                          subject = "Sending an email", text = "Hello, I just wanted to send this email. Please let me know if it works.")

smtp_gmail(message_yrubi, verbose = TRUE)

message_assignment <- envelope(from = "yrubilanda@utexas.edu", to = "anthony.difiore@utexas.edu",
                          subject = "Mak_Sending a message using {emayili}", text = "Hello, I just wanted to send this email. Please let me know if it works.")

smtp_gmail(message_assignment, verbose = TRUE)

message_love <- envelope(from = "yrubilanda@utexas.edu", to = "makkevin08@gmail.com",
                         subject = "test email", text = "Hi Love,
                         
                         I just wanted to take a moment to tell you how much I love you. Thank you for everything you do, especially for taking such good care of Sophia while I work and go to school. It means the world to me to have you by my side, and I’m so grateful for your love and dedication to our family.
                         
                         I know things can be tough, and it’s easy to feel discouraged sometimes. But remember, God is taking care of you, of us, every single day. When you feel low, I hope you’ll read this email and know how much you are loved and appreciated. A job will come soon—I truly believe that. God has you exactly where you need to be right now, even if it doesn’t feel like it. Trust His timing, because it’s always perfect.
                         
                         Here’s a scripture to encourage you:
                         “For I know the plans I have for you,” declares the Lord, “plans to prosper you and not to harm you, plans to give you hope and a future.” – Jeremiah 29:11
                         
                         I’m so proud of you, and I believe in you with all my heart. You’re an amazing husband, father, and partner. We’ll get through everything together.
                         
                         All my love,
                         Your Wife")

smtp_gmail(message_love, verbose = TRUE)


'this function requires four arguments from the user. The function will send an email
      specifically from yrubilanda@utexas.edu as this is where the password has previously
      been set up from. You still need to enter a from'

send_email <- function(from_email, to_email, subject_email, body_email) {

  #create envelope 
  mail <- envelope(from = from_email,
                   to = to_email,
                   subject = subject_email,
                   text = body_email,)
  
  #send email               
  smtp_gmail(mail, verbose = TRUE)}
  

#FUNCTION SEND EMAIL TEST:
  
  send_email("yrubilanda@utexas.edu", 
             "makkevin08@gmail.com",
             "test - function",
             "I am just testing to see if this function works")
  
