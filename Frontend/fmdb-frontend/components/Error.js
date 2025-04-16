// components/ErrorPopup.js
import React from 'react';
import { X } from 'lucide-react';

const ErrorPopup = ({ message, onClose }) => {
  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black bg-opacity-40">
      <div className="relative bg-white text-darkPurple rounded-2xl p-6 w-96 shadow-lg text-center">
        <button onClick={onClose} className="absolute top-3 right-3 text-darkPurple hover:text-purple">
          <X className="w-5 h-5" />
        </button>
        <p className="text-lg mb-4">{message}</p>
        <button
          onClick={onClose}
          className="mt-2 px-6 py-2 bg-purple text-white rounded-xl hover:bg-darkPurple transition"
        >
          Okay
        </button>
      </div>
    </div>
  );
};

export default ErrorPopup;
