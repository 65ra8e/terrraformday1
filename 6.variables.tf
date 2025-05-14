variable "project" {
  type                            = string
  default                         = "seahawks25"
}
 

variable "region1" {
  type                            = string
  default                         = "us-west1"
  
}
 
variable "region2" {
  type                            = string
  default                         = "asia-east1"
  
}

variable "region3" {
  type                            = string
  default                         = "us-central1"
  
}

variable "region4" {
  type                            = string
  default                         = "southamerica-east1"
  
}

variable "subnetwork" {
   type                           = map(map(string))
   default                        = {
     imfromseattle                = {
       name                       = "imfromseattle"
       ip_cidr_range              = "10.206.77.0/24"
       region                     = "us-west1"
       
   }

    tokyo                         = {
        name                      = "tokyo"
        ip_cidr_range             = "10.206.97.0/24"
        region                    = "asia-east1"
        
    }

    iowa                          = {
        name                      = "iowa"
        ip_cidr_range             = "10.30.77.0/24"
        region                    = "us-central1"
        
    }

    southamerica                  = {
        name                      = "southamerica"
        ip_cidr_range             = "10.30.97.0/24"
        region                    = "southamerica-east1"
        
    }
   }
  }

  