class Project {
  final String? title, description, details, videopath, gitlink;

  Project(
      {this.details,
      this.title,
      this.description,
      this.videopath,
      this.gitlink});
}

// ignore: non_constant_identifier_names
List<Project> demo_projects = [
  Project(
    gitlink: "https://github.com/usmansiddiqui12321/Stitch-Craft",
    title: "Stitch Craft - Tailoring Made Easy",
    description:
        'Stitch Craft revolutionizes the way you approach custom tailoring. No more hassles of traditional fittings – we\'ve brought tailoring to your fingertips. \n\n📏 Precise Measurements: Our app simplifies the process of recording your measurements, ensuring a perfect fit for your attire. \n\n👗 Unleash Your Style: Explore a vast selection of fabrics, styles, and designs to create the outfit of your dreams. \n\n📦 Seamless Order Confirmation: Once you\'ve customized your order, our expert tailors meticulously review every detail, providing you with a confirmation of quality and satisfaction. \n\n💼 Order Tracking: Stay in the loop on the status of your order, from stitching to delivery, all within the app. \n\n🧵 Crafted with Care: Our skilled tailors pay attention to every detail, ensuring that your outfit is a true masterpiece. \n\nExperience the future of tailoring with Stitch Craft. Say yes to convenience, quality, and style. Stitch Craft - Tailored for You.',
    videopath: "videos/StitchCraft.mp4",
  ),
  Project(
    gitlink: "https://github.com/usmansiddiqui12321/Firebase-Social-Media",
    title: "Firebase Social Media App",
    description:
        'The application allows users to sign in and sign out using Firebase authentication\n \nUsers can also reset their password using the forgot password feature provided by Firebase\n \nOnce logged in, users can send and receive messages to other users within the app\n \nUsers can create posts and edit their own posts as needed\n \nThe application also allows users to upload images to Firebase storage\n \nUser data is securely stored and accessed using Firebase secure cloud-based services\n \nThe app is designed with a clean and intuitive user interface, making it easy to navigate and use.\n \nThe app provides real-time updates on new messages and posts.\n \nUsers can customize their profile information, such as their name and profile picture.\n \nThe application is optimized for both iOS and Android, ensuring a seamless user experience across different devices.',
    videopath: "videos/socialmedia.mp4",
  ),
    Project(
    gitlink: "https://github.com/usmansiddiqui12321/GoogleMapRoutes",
    title: "Google Maps Routes",
    description:
        "Google Maps Routes simplifies your journey by providing custom pointers with detailed info windows about specific locations. Easily pinpoint your destination and create routes with polylines to guide your way. \n\n📍 Custom Info Windows: Discover detailed information about specific locations with our custom info windows, making your navigation experience informative and user-friendly. \n\n📍 Easy Pinpointing: Effortlessly pinpoint your destination on the map for quick and accurate navigation. \n\n📍 Route Creation: Create routes with polylines to visualize your path and ensure you never lose your way. \n\nWhether you're exploring new places or need precise directions, Google Maps Routes has got you covered. Navigate with confidence and ease. \n\n",
    videopath: "videos/GoogleMapRoutes.mp4",
  ),
  Project(
    gitlink:
        "https://github.com/usmansiddiqui12321/TODO-CRUD-App-with-FireBase",
    title: "TODO CRUD App with Firebase",
    description:
        'The CRUD Todo application allows users to create, read, update, and delete their todo items in a simple and user-friendly way. \n \nEach user has a unique ID that they can use to log in to the application through Firebase authentication. \n \nOnce logged in, users can view their list of todo items, which they can edit or delete as needed. \n \nThe application uses a cloud-based database to store user data securely and ensure that it is accessible from anywhere. \n \nThe application also provides real-time updates, so users can see changes to their todo list as they happen. \n \nUsers can easily add new todo items to their list by typing in a description and pressing the "Add" button. \n \nThe app is designed with a clean and intuitive user interface, making it easy to navigate and use. \n \nThe CRUD Todo application is optimized for both desktop and mobile devices, ensuring that users can access their todo list from anywhere at any time. \n \nWith this application, users can stay organized and on top of their tasks, helping them to be more productive and efficient in their daily lives.',
    videopath: "videos/CRUD.mp4",
  ),
  Project(
    gitlink: "https://github.com/usmansiddiqui12321/COVID-19-Tracker-Global",
    title: "Covid-19 Global Tracker - Flutter API Integration",
    description:
        'The Covid-19 Global Tracker is a Flutter-based application that provides real-time data about the Covid-19 pandemic. \n \nThe application features an animated splash screen that adds to the user experience. \n \nThe application uses API integration to gather data on the number of confirmed cases, deaths, and recoveries from Covid-19 from all around the world. \n \nUsers can use the application to view global statistics on Covid-19, including the total number of cases, deaths, and recoveries. \n \nThe application also allows users to search for their country and get information on the total number of cases, deaths, and recoveries in their country. \n \nThe data presented in the application is updated in real-time, providing users with the most up-to-date information available. \n \nThe user interface is designed to be user-friendly and intuitive, making it easy for users to navigate the application and find the information they need. \n \nThe Covid-19 Global Tracker is a powerful tool that can help users stay informed about the pandemic and take necessary precautions to stay safe. \n \nWith this application, users can monitor the global situation and stay up-to-date with the latest information on Covid-19. \n \nThe app is optimized for both Android and iOS, ensuring that users can access the data they need on any device.',
    videopath: "videos/covid.mp4",
  ),
  Project(
    gitlink: "https://github.com/usmansiddiqui12321/Payment-App-UI",
    title: "PaymentApp - Flutter UI",
    description:
        'The Payment-App-UI is a sleek and modern application designed to make mobile payments easy and convenient. \n \nThe application features a user-friendly profile page that allows users to easily manage their account information. \n \nThe notification section is also designed to be easily accessible, allowing users to quickly check their recent transactions and any other important updates. \n \nThe front page of the application is designed to be visually appealing, with a clean and modern layout that is easy to navigate. \n \nThe application also includes a bar code scanner, which makes it easy to scan and process payments quickly and securely. \n \nThe Balance page provides users with an at-a-glance view of their account balance and recent transactions. \n \nThe Recieve Money feature makes it easy for users to request payments from other users, making it simple and convenient to split bills and pay for goods and services. \n \nThe application also includes a rewards program, which allows users to earn points and redeem them for discounts and other rewards. \n \nWith its user-friendly interface and powerful features, the Payment-App-UI is an essential tool for anyone looking to make mobile payments quickly and easily. \n \nThe app is optimized for both Android and iOS, ensuring that users can access their accounts from any device.',
    videopath: "videos/payment.mp4",
  ),

];
