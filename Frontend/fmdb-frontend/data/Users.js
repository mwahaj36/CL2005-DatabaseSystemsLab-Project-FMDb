export const users = [
    {
      userID: "u001",
      fullName: "Alice Monroe",
      email: "alice.monroe@example.com",
      password: "alice123",
      bio: "Cinema is my escape and passion. Always on the lookout for bold storytelling.",
      dob: "1992-07-14",
      userType: "verified critic",
      gender: "female",
      privacy: false,
      userFavs: ["tt7286456", "tt1392190", "tt0097216", "tt1684562"],
      friends: ["u002", "u003"], // friends by ID
      profilePic: "https://i.pinimg.com/736x/6a/fc/5c/6afc5c43a5050054d7482202e3b75239.jpg" // Example profile picture URL
    },
    {
      userID: "u002",
      fullName: "Mark Chen",
      email: "mark.chen@example.com",
      password: "markpass",
      bio: "Techie by day, movie buff by night. I love deep psychological thrillers.",
      dob: "1988-11-02",
      userType: "user",
      gender: "male",
      privacy: true,
      userFavs: ["tt7286456", "tt0129387", "tt1392190", "tt1684562"],
      friends: ["u001", "u004"],
      profilePic: "https://preview.redd.it/a-scene-pfp-that-i-made-v0-ki6c79dfw39a1.png?auto=webp&s=117730a48b8c3c77e282e16dbf0b805ca21a4b2e" // Example profile picture URL
    },
    {
      userID: "u003",
      fullName: "Sophie Delacruz",
      email: "sophie.delacruz@example.com",
      password: "sophie@22",
      bio: "Romcoms, action, or arthouse – I don't discriminate!",
      dob: "1995-04-22",
      userType: "user",
      gender: "female",
      privacy: false,
      userFavs: ["tt0129387", "tt1684562", "tt0097216", "tt7286456"],
      friends: ["u001"],
      profilePic: "https://minecraftpfp.com/PFP/tommyinnit.png" // Example profile picture URL
    },
    {
      userID: "u004",
      fullName: "Raj Kapoor",
      email: "raj.kapoor@example.com",
      password: "adminRaj80",
      bio: "I rate movies for a living. Expect brutal honesty and the occasional soft spot.",
      dob: "1980-01-30",
      userType: "admin",
      gender: "male",
      privacy: false,
      userFavs: ["tt1392190", "tt7286456", "tt0097216", "tt1684562"],
      friends: ["u002", "u005"],
      profilePic: "https://i.pinimg.com/236x/68/31/12/68311248ba2f6e0ba94ff6da62eac9f6.jpg" // Example profile picture URL
    },
    {
      userID: "u005",
      fullName: "chamkadar khan",
      email: "mwahaj25@gmail.com",
      password: "12345678",
      bio: "up wonkin my willy",
      dob: "2005-06-30",
      userType: "admin",
      gender: "male",
      privacy: true,
      userFavs: ["tt3783958", "tt0109424", "tt2975590", "tt0045152"],
      friends: ["u004"],
      profilePic: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2RSVGBCGKB68-HvmIPpvr81fU1DF95WkJTg&s" // Example profile picture URL
    }
  ];
  