import 'professionals.dart';

List get_pro() {
  List professionals = [];
  Professionals p = new Professionals("Maneesh Pandey",
      "maneeshpandey@gmail.com", "Technician", 4.5, 447, "", "available");
  professionals.add(p);
  professionals.add(new Professionals("Sahil Prajapati", "sahilpraz@gmail.com",
      "Electrician", 3.1, 682, "", "available"));
  professionals.add(new Professionals("Rijan Rajopadhyay",
      "rijanbarca@gmail.com", "Plumber", 2.4, 224, "", "available"));
  professionals.add(new Professionals("Ayush Manandhar",
      "ayushthedoctor@gmail.com", "Doctor", 4.5, 639, "", "available"));
  professionals.add(new Professionals("Samir Ali", "sameerali@gmail.com",
      "Electrician", 3.4, 965, "", "available"));
  return professionals;
}
