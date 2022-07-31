using PyCall

keyring = pyimport("keyring")

println(keyring.get_keyring())