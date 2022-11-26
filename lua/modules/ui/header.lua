local header = {
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠠⠌⠐⠁⠘⠂⠙⡀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠌⠁⠀⠀⠀⠀⠀⠀⠀⠀⠘⠲⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠤⠤⠀⠀⢠⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠁⠀⠀⠀⠈⣦⢮⡀⠀⢀⣤⣄⠀⢀⣠⡀⠀⠀⠀⠀⠀⠸⣶⡄⠀⠀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡆⠀⠀⠘⢣⠀⠀⡅⣼⣻⢿⣚⣟⡻⠀⢸⡟⡟⢠⣤⣄⣀⠐⢍⠙⣿⡆⠁⠀⠀⠈⠠⡀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⢸⠔⠊⠙⡻⠈⠉⠛⡿⠳⡶⡶⠛⠉⠉⠻⣻⠗⢽⣶⡰⠁⠀⠀⠀⠀⠀⠀⢱⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣅⣦⠞⠁⠀⠀⠀⢇⠘⢿⡦⡇⠁⠀⠳⢖⠞⠁⣼⠉⠀⠙⠋⠁⠀⠠⠄⠁⡄⠀⠀⢭⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡨⠇⠒⠒⠢⢤⡀⠀⠁⠒⠃⠀⠀⠀⠀⠉⠈⣉⣀⣀⣀⡀⠀⠀⠀⠀⠀⡰⠁⠀⣮⠎⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠖⠁⠀⠀⠀⠀⠀⠀⠈⠢⡀⠀⠀⠀⠀⠀⡠⠒⠉⠀⠀⠀⠀⠉⠑⠦⡀⠀⠀⢠⡤⠟⠉⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢱⠀⠀⠀⢠⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⡄⠀⠈⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢱⠀⠀⣸⣿⣷⣶⣤⡀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠇⠀⠀⠀⠀⠀⠀⣰⣶⣦⠀⢀⡞⠀⠀⠀⡇⠀⢀⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⡘⠀⠀⢺⣿⣿⣿⣿⣿⣷⣄⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠔⠙⢆⡀⠀⠀⠀⠀⠈⠓⢁⡠⠊⣀⣀⡀⠀⠱⡀⠘⠽⠿⠃⠀⠀⠀⠀⠀⠀⡰⠁⠀⢈⣻⣿⣿⣿⣿⣿⣿⣿⣧⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠉⠒⠒⠲⠖⠒⠊⠁⠔⠚⠿⠿⠗⢄⠀⠙⠢⢄⣀⠀⠀⠀⢀⣀⠤⠊⠀⠀⠀⠀⢽⣿⣿⣿⣿⣿⣿⣿⣿⣇]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠒⠢⢄⠠⠀⠀⠀⠀⠀⠈⠉⠉⠁⠀⠀⠀⠀⠀⠀⢐⢿⣿⣿⣿⣿⡟⠈⣿⠀⢸]],
  [[⠀⠀⣀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠈⡆⠀⠠⠒⠒⠂⠀⠤⠤⠀⢀⣀⡀⠀⠢⠤⠤⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣽⣿⣿⣿⣿⣿⣾⣟⣶⣾]],
  [[⢠⠰⢶⣿⣿⣿⣿⣿⠿⢖⣰⣄⣠⡀⢈⡢⣀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠐⠒⠢⠤⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠤⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟]],
  [[⠈⡏⢹⣶⣶⣶⠀⠀⣿⣿⡏⠀⣸⠇⡎⠀⠑⢢⠀⠀⠀⠀⠀⣠⣤⣤⣤⡀⠀⠀⠀⠀⠀⠀⠀⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⣑⣼⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀]],
  [[⠀⢳⠈⣿⣿⡏⠀⢸⣿⣿⠶⠛⠁⠀⠈⠒⣢⣼⠀⠀⠀⠀⠀⣿⠀⠀⠉⠸⣆⠀⠀⠀⠀⠀⠀⢠⠀⠀⠀⢀⠴⠒⠒⢲⡀⣻⣻⣌⢹⣿⣿⣿⣿⠿⣻⠟⠋⠀⠀]],
  [[⠀⠘⢤⣿⣿⣇⣀⣼⡿⠟⠀⠀⠀⠀⢠⠊⠁⠀⡇⠀⠀⠀⠀⠹⡢⠄⠀⣤⡿⠀⠀⠀⠀⠀⠀⠘⠢⠤⠤⠊⠀⢀⣤⡴⠷⠁⣻⣻⢸⠙⡿⠿⠟⠉⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⢀⠇⠀⠀⠀⠈⠐⣄⠀⠀⠀⠈⠁⠀⠋⠁⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠛⠛⢛⠿⠋⠀⠀⠐⡄⣿⢀⠃⠰⠀⠀⠀⠀⠀⠀⠀]],
  [[⠄⠀⠀⠀⠀⠀⠀⠠⠤⠄⠀⡉⠀⠙⡄⠀⠀⠀⠀⠀⠈⠓⠲⠦⢤⣤⣀⣀⡀⠀⠀⠀⠀⠀⠀⣀⣠⣀⢀⠠⠂⠁⠀⠀⠀⠀⠀⢴⡇⡌⠀⠂⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠱⡀⠀⠘⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠈⠛⠉⠓⠒⠒⠊⠉⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⡽⡜⠀⠌⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣦⣀⣸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠈⠁⣄⠀⠀⠀⠀⠀⣴⣿⣿⣎⡀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣶⣤⣄⣀⣀⣀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⢀⠊⠀⠀⢠⡏⠀⡀⣀⣴⣾⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣦⣤⡌⠀⣀⣴⣧⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀]],
}

return header
