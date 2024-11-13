// Define a tipo para armazenar as informações de uma identidade
type IdentityData = {
  recoveryPhrase: Text;
  principal: Principal;
};

// Armazena as identidades e suas frases de recuperação
actor IdentityManager {

  // Mapa para armazenar as identidades associadas aos Principals
  stable var identities: HashMap<Principal, IdentityData> = HashMap.fromArray([]);

  // Função para registrar uma nova identidade e a frase de recuperação
  public func register_identity(recovery_phrase: Text) : async Text {
    let principal = Principal.fromActor(this);
    let identity_data = IdentityData {
      recoveryPhrase = recovery_phrase;
      principal = principal;
    };

    // Armazena a identidade no mapa
    identities.put(principal, identity_data);

    return "Identidade registrada com sucesso!";
  };

  // Função para obter a frase de recuperação de uma identidade registrada
  public func get_recovery_phrase() : async Text {
    let principal = Principal.fromActor(this);
    
    switch (identities.get(principal)) {
      case (?identity_data) {
        return identity_data.recoveryPhrase;
      };
      case (_) {
        return "Identidade não encontrada.";
      };
    };
  };

  // Função para obter o principal da identidade registrada
  public func get_principal() : async Principal {
    return Principal.fromActor(this);
  };
};