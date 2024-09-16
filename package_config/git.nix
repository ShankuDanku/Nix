{...}: {
  programs.git = {
    enable = true;
    config = [
      {user.email = "sashankdurbha@gmail.com";}
      {user.name = "Sashank Durbha";}
    ];
  };
}
