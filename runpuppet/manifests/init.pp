#--------------------------------------------
#Manifest for determined using server or node 
#--------------------------------------------
class runpuppet {
  if $::hostname == 'serverpuppet' {
    include runpuppet::pupserver
  }
  else {
    include runpuppet::pupnode
  }
}
