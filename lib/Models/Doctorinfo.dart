class Doctorinfo1 {
  final String name;
  final String address;
  final String type;
  final String imgpath;
  final String about;
  final String workingdays;

  final String workinghrs;
  final int pnumber;

  Doctorinfo1(
      {this.name,
      this.pnumber,
      this.address,
      this.type,
      this.imgpath,
      this.about,
      this.workingdays,
      this.workinghrs});
  static List<Doctorinfo1> doctorinfo2 = [
    Doctorinfo1(
      name: "DR.Ranjith",
      about:
          "Dr.ranjith is Heart specialist.Dr.ranjith is Heart specialist.Dr.ranjith is Heart specialist.Dr.ranjith is Heart specialist.Dr.ranjith is Heart specialist.",
      address: "1/1,\nflat 2,\ngp,\ncbe",
      imgpath: "d1.jpg",
      type: "Heart Specialist",
      workingdays: "Monday-Friday",
      workinghrs: "9AM-3PM",
      pnumber: 1234567890,
    ),
    Doctorinfo1(
      pnumber: 1234567890,
      name: "DR.Malar",
      about:
          "Dr.malar is END specialist.Dr.malar is END specialistDr.malar is END specialistDr.bala is END specialistDr.bala is END specialistDr.bala is END specialistDr.bala is END specialist",
      address: "1/2,\nflat 3,\ngp-1'st cut,\ncbe",
      imgpath: "d2.jpg",
      type: "cold",
      workingdays: "Monday-saturday",
      workinghrs: "9AM-5PM",
    ),
    Doctorinfo1(
      pnumber: 1234567890,
      name: "DR.Ranjith",
      about:
          "Dr.ranjith is Heart specialist.Dr.ranjith is Heart specialist.Dr.ranjith is Heart specialist.Dr.ranjith is Heart specialist.Dr.ranjith is Heart specialist.",
      address: "1/1,\nflat 2,\ngp,\ncbe",
      imgpath: "d3.jpg",
      type: "Heart Specialist",
      workingdays: "Monday-Friday",
      workinghrs: "9AM-3PM",
    ),
    Doctorinfo1(
      pnumber: 1234567890,
      name: "DR.Senthil",
      about:
          "Dr.Senthil is Heart specialist.Dr.Senthil is Heart specialist.Dr.Senthil is Heart specialist.Dr.Senthil is Heart specialist.Dr.Senthil is Heart specialist.",
      address: "1/1s,\nflat 2,\ngp,\ncbe",
      imgpath: "d4.jpg",
      type: "END Specialist",
      workingdays: "Monday-Sunday",
      workinghrs: "9AM-1PM",
    ),
  ];
}
