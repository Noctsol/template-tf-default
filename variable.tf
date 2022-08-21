/*
Created Date - 2022-08-21
Author: Noctsol
Summary:
    Hold all the variables used by the terraform repository
*/

########################


variable DO_PROJECT_NAME {
    type = string
    default = ""
}

# Availble regions: nyc1, nyc2, nyc3, ams2, ams3, sfo1 ,sfo2, sfo3, sgp1, lon1, fra1, tor1, blr1
# For more info go to https://docs.digitalocean.com/products/platform/availability-matrix/
variable DO_REGION {
    type = string
    default = ""
}


######################## VARS FROM TF Workspace ########################


variable DO_TOKEN {
    type = string
}
