###################################
#                                 #
#         password generator      #
#                      fran.k.19  #
###################################

n = 8


special_character = c(" ","!","#","$","%","&","'",
                      "(",")","*","+","-",".","/",":",
                      ";","<","=",">","?","@","[",
                      "]","^","_","`","{","|","}","~")

### split digit into 4 randomly numbered parts ###
x = rmultinom(n=1,size = n, prob = rep(0.25,4))

num_digit = x[1,]
small_alpha_digit = x[2,]
large_alpha_digit  = x[3,]
special_digit = x[4,]

num = sample(0:9, size = num_digit, replace  = TRUE)

small = sample(letters, size = small_alpha_digit, replace =TRUE)

large = sample(LETTERS, size = large_alpha_digit, replace =TRUE)

special = sample(special_character, size = special_digit, replace = TRUE)


### recombine to generate string ###
combined = c(num, small, large, special)

remix  = sample(combined)

password = paste0(remix, collapse='')

print(password)








