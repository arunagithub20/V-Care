class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(

      title: 'Vehicle Maintenance',
      image: 'images/maintenance',
      discription:
          "Regular vehicle maintenance is essential for safe and smooth driving. Our app offers reminders and expert tips to help you keep your car in top condition for worry-free journeys."),
  UnbordingContent(
      title: 'Spare Parts',
      image: 'images/spareparts',
      discription:
          "Easily find and order high-quality spare parts for your vehicle, from batteries to brakes. Get them delivered to your doorstep to ensure your vehicle continues running smoothly."),
  UnbordingContent(
      title: 'Buying & Selling',
      image: 'images/buysell',
      discription:
          "Use our user-friendly app to meet buyers and sellers, make safe deals, and find what you want or sell your stuff for cash."),
  UnbordingContent(
      title: 'Breakdown Services',
      image: 'images/breakdown',
      discription:
          "In case of a roadside emergency, our app connects you with trusted service providers, ensuring fast and reliable help for issues like flat tires, engine trouble, or dead batteries."),
  UnbordingContent(
      title: 'Location Mapping',
      image: 'images/location',
      discription:
          "If you encounter car trouble in an unfamiliar place, our app will pinpoint your exact location and connect you with nearby assistance, ensuring you're never stranded."),
];
