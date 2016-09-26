#--------------------------------------------
#Manifest for determined using server or node 
#--------------------------------------------

#--------------------------------------------
##Manifest for determined using server or node 
##--------------------------------------------
class runpuppet {
  if $::checktest == 'true' {
      include runpuppet::pupserver
        }
          else {
              include runpuppet::pupnode
                }
        }


