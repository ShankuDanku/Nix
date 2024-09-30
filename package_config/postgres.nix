{...}: {
  config.services.postgresql = {
    enable = true;
    ensureDatabases = [
      "palletbees"
    ];
  };
}
