import Link from "next/link";

const MemberCard = ({ imageSrc, alt, userID, userName, userType, activities, movies }) => {
  console.log("MemberCard props:", { userID, userName });

  return (
    <Link
      href={`/profile/${userID}`}
      className="flex items-center bg-opacity-60 p-4 rounded-2xl shadow-xl hover:scale-105 transition mt-10 max-w-xs mx-auto bg-black bg-opacity-50"
    >
      <div className="w-32 h-32 bg-purple rounded-md overflow-hidden shadow-md">
        <img src={imageSrc} alt={alt} className="w-full h-full object-cover" />
      </div>
      <div className="flex flex-col items-center justify-center mx-4 text-center flex-1">
        <h3 className="text-white text-lg font-semibold break-words">{userName}</h3>

        <span
          className={`text-xl font-bold py-1 px-3 rounded-full ${
            userType === "admin"
              ? "text-emeraldGreen"
              : userType === "critic"
              ? "text-gold"
              : "text-purpleWhite"
          }`}
        >
          {userType}
        </span>

        {typeof activities === "number" && (
          <p className="text-white text-sm mt-2">
            Activities Last Week: {activities}
          </p>
        )}

        {typeof movies === "number" && (
          <p className="text-white text-sm mt-1">
            Movies Watched: {movies}
          </p>
        )}
      </div>
    </Link>
  );
};

export default MemberCard;
