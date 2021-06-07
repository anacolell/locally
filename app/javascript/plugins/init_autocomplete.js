import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('search');
  if (addressInput) {
    places({ container: addressInput });
  }
    const locationInput = document.getElementById('recommendation_location');
  if (locationInput) {
    places({ container: locationInput });
  }
};

export { initAutocomplete };
