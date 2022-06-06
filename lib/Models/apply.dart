import 'dart:convert';

class ApplyModel {
  String userID;
  String fullName;
  String dateOfBirth;
  String userEmail;
  String userPhoneNumber;
  String homePhoneNumber;
  String gender;
  String nationality;
  String martialStatus;
  String regionBirth;
  String cityBirth;
  String woredaBirth;
  String kebeleBirth;
  String houseNumberBirth;
  String subCityBirth;
  String regionResidence;
  String cityResidence;
  String woredaResidence;
  String kebeleResidence;
  String houseNumberResidence;
  String subCityResidence;
  String postalCodeResidence;
  String nameofInstitution;
  String jobProffession;
  String workRegion;
  String workCity;
  String workPObox;
  String workSubCity;
  String workWoreda;
  String workKebele;
  String workHouseNumber;
  DateTime dateofApplication = DateTime.now();
  String userImageURL;
  String artistCategory;
  String applicantStatus;
  String cvURL;
  String youtubeLink;
  ApplyModel({
    required this.userID,
    required this.fullName,
    required this.dateOfBirth,
    required this.userEmail,
    required this.userPhoneNumber,
    required this.homePhoneNumber,
    required this.gender,
    required this.nationality,
    required this.martialStatus,
    required this.regionBirth,
    required this.cityBirth,
    required this.woredaBirth,
    required this.kebeleBirth,
    required this.houseNumberBirth,
    required this.subCityBirth,
    required this.regionResidence,
    required this.cityResidence,
    required this.woredaResidence,
    required this.kebeleResidence,
    required this.houseNumberResidence,
    required this.subCityResidence,
    required this.postalCodeResidence,
    required this.nameofInstitution,
    required this.jobProffession,
    required this.workRegion,
    required this.workCity,
    required this.workPObox,
    required this.workSubCity,
    required this.workWoreda,
    required this.workKebele,
    required this.workHouseNumber,
    required this.userImageURL,
    required this.artistCategory,
    required this.applicantStatus,
    required this.cvURL,
    required this.youtubeLink,
  });

  ApplyModel copyWith({
    String? userID,
    String? fullName,
    String? dateOfBirth,
    String? userEmail,
    String? userPhoneNumber,
    String? homePhoneNumber,
    String? gender,
    String? nationality,
    String? martialStatus,
    String? regionBirth,
    String? cityBirth,
    String? woredaBirth,
    String? kebeleBirth,
    String? houseNumberBirth,
    String? subCityBirth,
    String? regionResidence,
    String? cityResidence,
    String? woredaResidence,
    String? kebeleResidence,
    String? houseNumberResidence,
    String? subCityResidence,
    String? postalCodeResidence,
    String? nameofInstitution,
    String? jobProffession,
    String? workRegion,
    String? workCity,
    String? workPObox,
    String? workSubCity,
    String? workWoreda,
    String? workKebele,
    String? workHouseNumber,
    String? userImageURL,
    String? artistCategory,
    String? applicantStatus,
    String? cvURL,
    String? youtubeLink,
  }) {
    return ApplyModel(
      userID: userID ?? this.userID,
      fullName: fullName ?? this.fullName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      userEmail: userEmail ?? this.userEmail,
      userPhoneNumber: userPhoneNumber ?? this.userPhoneNumber,
      homePhoneNumber: homePhoneNumber ?? this.homePhoneNumber,
      gender: gender ?? this.gender,
      nationality: nationality ?? this.nationality,
      martialStatus: martialStatus ?? this.martialStatus,
      regionBirth: regionBirth ?? this.regionBirth,
      cityBirth: cityBirth ?? this.cityBirth,
      woredaBirth: woredaBirth ?? this.woredaBirth,
      kebeleBirth: kebeleBirth ?? this.kebeleBirth,
      houseNumberBirth: houseNumberBirth ?? this.houseNumberBirth,
      subCityBirth: subCityBirth ?? this.subCityBirth,
      regionResidence: regionResidence ?? this.regionResidence,
      cityResidence: cityResidence ?? this.cityResidence,
      woredaResidence: woredaResidence ?? this.woredaResidence,
      kebeleResidence: kebeleResidence ?? this.kebeleResidence,
      houseNumberResidence: houseNumberResidence ?? this.houseNumberResidence,
      subCityResidence: subCityResidence ?? this.subCityResidence,
      postalCodeResidence: postalCodeResidence ?? this.postalCodeResidence,
      nameofInstitution: nameofInstitution ?? this.nameofInstitution,
      jobProffession: jobProffession ?? this.jobProffession,
      workRegion: workRegion ?? this.workRegion,
      workCity: workCity ?? this.workCity,
      workPObox: workPObox ?? this.workPObox,
      workSubCity: workSubCity ?? this.workSubCity,
      workWoreda: workWoreda ?? this.workWoreda,
      workKebele: workKebele ?? this.workKebele,
      workHouseNumber: workHouseNumber ?? this.workHouseNumber,
      userImageURL: userImageURL ?? this.userImageURL,
      artistCategory: artistCategory ?? this.artistCategory,
      applicantStatus: applicantStatus ?? this.applicantStatus,
      cvURL: cvURL ?? this.cvURL,
      youtubeLink: youtubeLink ?? this.youtubeLink,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userID': userID,
      'fullName': fullName,
      'dateOfBirth': dateOfBirth,
      'userEmail': userEmail,
      'userPhoneNumber': userPhoneNumber,
      'homePhoneNumber': homePhoneNumber,
      'gender': gender,
      'nationality': nationality,
      'martialStatus': martialStatus,
      'regionBirth': regionBirth,
      'cityBirth': cityBirth,
      'woredaBirth': woredaBirth,
      'kebeleBirth': kebeleBirth,
      'houseNumberBirth': houseNumberBirth,
      'subCityBirth': subCityBirth,
      'regionResidence': regionResidence,
      'cityResidence': cityResidence,
      'woredaResidence': woredaResidence,
      'kebeleResidence': kebeleResidence,
      'houseNumberResidence': houseNumberResidence,
      'subCityResidence': subCityResidence,
      'postalCodeResidence': postalCodeResidence,
      'nameofInstitution': nameofInstitution,
      'jobProffession': jobProffession,
      'workRegion': workRegion,
      'workCity': workCity,
      'workPObox': workPObox,
      'workSubCity': workSubCity,
      'workWoreda': workWoreda,
      'workKebele': workKebele,
      'workHouseNumber': workHouseNumber,
      'userImageURL': userImageURL,
      'artistCategory': artistCategory,
      'applicantStatus': applicantStatus,
      'cvURL': cvURL,
      'youtubeLink': youtubeLink,
    };
  }

  factory ApplyModel.fromMap(Map<String, dynamic> map) {
    return ApplyModel(
      userID: map['userID'] ?? '',
      fullName: map['fullName'] ?? '',
      dateOfBirth: map['dateOfBirth'] ?? '',
      userEmail: map['userEmail'] ?? '',
      userPhoneNumber: map['userPhoneNumber'] ?? '',
      homePhoneNumber: map['homePhoneNumber'] ?? '',
      gender: map['gender'] ?? '',
      nationality: map['nationality'] ?? '',
      martialStatus: map['martialStatus'] ?? '',
      regionBirth: map['regionBirth'] ?? '',
      cityBirth: map['cityBirth'] ?? '',
      woredaBirth: map['woredaBirth'] ?? '',
      kebeleBirth: map['kebeleBirth'] ?? '',
      houseNumberBirth: map['houseNumberBirth'] ?? '',
      subCityBirth: map['subCityBirth'] ?? '',
      regionResidence: map['regionResidence'] ?? '',
      cityResidence: map['cityResidence'] ?? '',
      woredaResidence: map['woredaResidence'] ?? '',
      kebeleResidence: map['kebeleResidence'] ?? '',
      houseNumberResidence: map['houseNumberResidence'] ?? '',
      subCityResidence: map['subCityResidence'] ?? '',
      postalCodeResidence: map['postalCodeResidence'] ?? '',
      nameofInstitution: map['nameofInstitution'] ?? '',
      jobProffession: map['jobProffession'] ?? '',
      workRegion: map['workRegion'] ?? '',
      workCity: map['workCity'] ?? '',
      workPObox: map['workPObox'] ?? '',
      workSubCity: map['workSubCity'] ?? '',
      workWoreda: map['workWoreda'] ?? '',
      workKebele: map['workKebele'] ?? '',
      workHouseNumber: map['workHouseNumber'] ?? '',
      userImageURL: map['userImageURL'] ?? '',
      artistCategory: map['artistCategory'] ?? '',
      applicantStatus: map['applicantStatus'] ?? '',
      cvURL: map['cvURL'] ?? '',
      youtubeLink: map['youtubeLink'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ApplyModel.fromJson(String source) =>
      ApplyModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ApplyModel(userID: $userID, fullName: $fullName, dateOfBirth: $dateOfBirth, userEmail: $userEmail, userPhoneNumber: $userPhoneNumber, homePhoneNumber: $homePhoneNumber, gender: $gender, nationality: $nationality, martialStatus: $martialStatus, regionBirth: $regionBirth, cityBirth: $cityBirth, woredaBirth: $woredaBirth, kebeleBirth: $kebeleBirth, houseNumberBirth: $houseNumberBirth, subCityBirth: $subCityBirth, regionResidence: $regionResidence, cityResidence: $cityResidence, woredaResidence: $woredaResidence, kebeleResidence: $kebeleResidence, houseNumberResidence: $houseNumberResidence, subCityResidence: $subCityResidence, postalCodeResidence: $postalCodeResidence, nameofInstitution: $nameofInstitution, jobProffession: $jobProffession, workRegion: $workRegion, workCity: $workCity, workPObox: $workPObox, workSubCity: $workSubCity, workWoreda: $workWoreda, workKebele: $workKebele, workHouseNumber: $workHouseNumber, userImageURL: $userImageURL, artistCategory: $artistCategory, applicantStatus: $applicantStatus, cvURL: $cvURL, youtubeLink: $youtubeLink)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ApplyModel &&
        other.userID == userID &&
        other.fullName == fullName &&
        other.dateOfBirth == dateOfBirth &&
        other.userEmail == userEmail &&
        other.userPhoneNumber == userPhoneNumber &&
        other.homePhoneNumber == homePhoneNumber &&
        other.gender == gender &&
        other.nationality == nationality &&
        other.martialStatus == martialStatus &&
        other.regionBirth == regionBirth &&
        other.cityBirth == cityBirth &&
        other.woredaBirth == woredaBirth &&
        other.kebeleBirth == kebeleBirth &&
        other.houseNumberBirth == houseNumberBirth &&
        other.subCityBirth == subCityBirth &&
        other.regionResidence == regionResidence &&
        other.cityResidence == cityResidence &&
        other.woredaResidence == woredaResidence &&
        other.kebeleResidence == kebeleResidence &&
        other.houseNumberResidence == houseNumberResidence &&
        other.subCityResidence == subCityResidence &&
        other.postalCodeResidence == postalCodeResidence &&
        other.nameofInstitution == nameofInstitution &&
        other.jobProffession == jobProffession &&
        other.workRegion == workRegion &&
        other.workCity == workCity &&
        other.workPObox == workPObox &&
        other.workSubCity == workSubCity &&
        other.workWoreda == workWoreda &&
        other.workKebele == workKebele &&
        other.workHouseNumber == workHouseNumber &&
        other.userImageURL == userImageURL &&
        other.artistCategory == artistCategory &&
        other.applicantStatus == applicantStatus &&
        other.cvURL == cvURL &&
        other.youtubeLink == youtubeLink;
  }

  @override
  int get hashCode {
    return userID.hashCode ^
        fullName.hashCode ^
        dateOfBirth.hashCode ^
        userEmail.hashCode ^
        userPhoneNumber.hashCode ^
        homePhoneNumber.hashCode ^
        gender.hashCode ^
        nationality.hashCode ^
        martialStatus.hashCode ^
        regionBirth.hashCode ^
        cityBirth.hashCode ^
        woredaBirth.hashCode ^
        kebeleBirth.hashCode ^
        houseNumberBirth.hashCode ^
        subCityBirth.hashCode ^
        regionResidence.hashCode ^
        cityResidence.hashCode ^
        woredaResidence.hashCode ^
        kebeleResidence.hashCode ^
        houseNumberResidence.hashCode ^
        subCityResidence.hashCode ^
        postalCodeResidence.hashCode ^
        nameofInstitution.hashCode ^
        jobProffession.hashCode ^
        workRegion.hashCode ^
        workCity.hashCode ^
        workPObox.hashCode ^
        workSubCity.hashCode ^
        workWoreda.hashCode ^
        workKebele.hashCode ^
        workHouseNumber.hashCode ^
        userImageURL.hashCode ^
        artistCategory.hashCode ^
        applicantStatus.hashCode ^
        cvURL.hashCode ^
        youtubeLink.hashCode;
  }
}
