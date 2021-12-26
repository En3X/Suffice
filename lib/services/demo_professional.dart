import 'professionals.dart';

List get_pro() {
  List professionals = [];
  Professionals p =
      new Professionals("Maneesh", "Technician", 4.5, 10, "", "available");
  professionals.add(p);
  professionals.add(
      new Professionals("Sahil", "Electrician", 3.4, 200, "", "available"));
  professionals
      .add(new Professionals("Rijan", "Plumber", 3.4, 200, "", "available"));
  professionals
      .add(new Professionals("Ayush", "Waiter", 3.4, 200, "", "available"));
  professionals.add(
      new Professionals("Samir", "Electrician", 3.4, 200, "", "available"));
  professionals.add(
      new Professionals("John Doe", "Home Service", 3.4, 200, "", "available"));
  return professionals;
}
