class ProfileDTO{
  
  ProfileDTO(String profileType, String name){
    this._profileType = profileType;
    this._name = name;
  }

  String _profileType;
  String _name;

  String getProfileType(){
    return this._profileType;
  }

  String getName(){
    return this._name;
  }
}